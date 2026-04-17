import 'package:applications/applications.dart';
import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:migrant_office/app/app_root_router.dart';
import 'package:migrant_office/core/constant/config.dart';
import 'package:migrant_office/core/storage/local_storage/app_local_storage_key.dart';
import 'package:migrant_office/debug/di/debug_di_module.dart';
import 'package:migrant_office/navigation/router_impls/app_root_router_impl.dart';
import 'package:migrant_office/navigation/routes/app_router.dart';
import 'package:network/network.dart';

class RootDiModule extends CoreModule
    with
        AuthModuleDependencies,
        ApplicationsModuleDependencies,
        DebugModuleDependencies {
  RootDiModule({required this.reinitialize});

  @override
  late final Future<void> Function() reinitialize;

  late final ErrorHandler errorHandler;

  @override
  late final PackageDeviceInfoService packageDeviceInfoService;

  @override
  late final LocalStorage localStorage;

  late final SecureStorage secureStorage;

  @override
  late final NetworkConfig networkConfig;

  late final RestClientService nonAuthRestClient;

  late final RestClientService authRestClient;

  late final AuthLocalDatasource authLocalDatasource;

  late final AuthRepository authRepository;

  @override
  late final AuthBloc authBloc;

  late final AuthInterceptor authInterceptor;

  late final GoRouter router;

  late final AppRootRouter appRootRouter;

  @override
  Future<void> init() async {
    errorHandler = ErrorHandler();

    final packageDeviceInfoService = PackageDeviceInfoServiceImpl();
    await packageDeviceInfoService.init();
    this.packageDeviceInfoService = packageDeviceInfoService;

    secureStorage = const SecureStorageImpl(
      storage: FlutterSecureStorage(),
      keys: [...AuthSecureStorageKey.keys],
    );

    localStorage = LocalStorageImpl(
      preferences: await SharedPreferences.getInstance(),
      keys: [...AppLocalStorageKey.keys],
    );

    _manageFlavor();

    final baseUrl = _resolveBaseUrl();
    final adapter = _resolveAdapter();

    networkConfig = NetworkConfig(
      servers: [
        ServerItem(uri: Uri.parse(Config.apiBaseUrlDev), name: 'Dev'),
        ServerItem(uri: Uri.parse(Config.apiBaseUrlProd), name: 'Prod'),
        ServerItem(
          uri: Uri.parse(Config.apiBaseUrlLocalMock),
          name: 'Local Mocks',
        ),
      ],
      certificateLoader: CertificateLoader(path: Config.certificateAssetPath),
    );
    _configureNetwork();

    authLocalDatasource = AuthLocalDatasource(secureStorage: secureStorage);

    final networkInfo = NetworkInfoImpl(connectivity: Connectivity());

    nonAuthRestClient = NonAuthRestClient(
      DioFactory(
        baseUrl: baseUrl,
        timeout: Config.networkTimeout,
        enableLogging: AppFlavor.isDev || kDebugMode,
        httpClientAdapter: adapter,
      ).create(),
      errorHandler: const NetworkErrorHandlerImpl(
        serverFailureParser: ServerFailureParserImpl(),
      ),
      networkInfo: networkInfo,
    );

    authInterceptor = AuthInterceptor(
      storage: authLocalDatasource,
      refreshClient: RefreshTokenNetworkDatasource(
        restClientService: nonAuthRestClient,
      ),
      buildHeaders: (token) => {'Authorization': 'Bearer ${token.accessToken}'},
    );

    authRestClient = AuthRestClient(
      DioFactory(
        baseUrl: baseUrl,
        timeout: Config.networkTimeout,
        enableLogging: AppFlavor.isDev || kDebugMode,
        interceptors: [authInterceptor],
        httpClientAdapter: adapter,
      ).create(),
      errorHandler: const NetworkErrorHandlerImpl(
        serverFailureParser: ServerFailureParserImpl(),
      ),
      networkInfo: networkInfo,
    );

    authRepository = AuthRepositoryImpl(
      localDatasource: authLocalDatasource,
      networkDatasource: AuthNetworkDatasourceImpl(
        restClientService: authRestClient,
      ),
    );

    authBloc = AuthBloc(
      signInUseCase: SignInUseCaseImpl(repository: authRepository),
      signOutUseCase: SignOutUseCaseImpl(repository: authRepository),
      authChangesStreamUseCase: AuthChangesStreamUseCaseImpl(
        repository: authRepository,
      ),
      // TODO(serikkaliev): restore session from local cache
      initialState: AuthState$Idle(isAuthenticated: false),
    );

    final authStateNotifier = StreamValueNotifier<AuthState>(
      authBloc.stream,
      authBloc.state,
    );

    router = GoRouter(
      initialLocation: AppRouter.applications,
      refreshListenable: authStateNotifier,
      routes: AppRouter.routes,
      navigatorKey: AppRouter.navigatorKey,
      redirect: (context, state) {
        final isAuthenticated = authStateNotifier.value.isAuthenticated;
        final isAuthRoute = state.matchedLocation.startsWith(AppRouter.auth);

        final publicRoutes = {AppRouter.debug};
        final isPublicRoute = publicRoutes.any(
          (route) => state.matchedLocation.startsWith(route),
        );

        if (isPublicRoute) return null;

        if (!isAuthenticated && !isAuthRoute) return AppRouter.auth;
        if (isAuthenticated && isAuthRoute) return AppRouter.applications;

        return null;
      },
    );

    appRootRouter = AppRootRouterImpl(router: router);
  }

  @override
  void dispose() {}

  String _resolveBaseUrl() => switch (AppFlavor.value) {
    Flavor.dev =>
      localStorage.getString(AppLocalStorageKey.testServer) ??
          Config.apiBaseUrlDev,
    Flavor.prod || null => Config.apiBaseUrlProd,
  };

  HttpClientAdapter? _resolveAdapter() {
    if (_isMockModeActive()) {
      return MockDioAdapter(
        mockService: MockService(
          mockMap: () => {...AuthMocks.mocks, ...ApplicationsMocks.mocks},
        ),
      );
    }
    if (_isSslPinningEnabled()) {
      return ProductionHttpClientAdapter(
        certificateFingerprint: Config.certificateFingerprint,
        prodUrl: Config.apiBaseUrlProd,
      );
    }
    return null;
  }

  bool _isMockModeActive() =>
      (AppFlavor.isDev || kDebugMode) &&
      localStorage.getString(AppLocalStorageKey.testServer) ==
          Config.apiBaseUrlLocalMock;

  bool _isSslPinningEnabled() =>
      AppFlavor.isProd ||
      (localStorage.getString(AppLocalStorageKey.testServer) ==
              Config.apiBaseUrlProd &&
          (localStorage.getBool(AppLocalStorageKey.enableSslPinningForQA) ??
              false));

  Future<void> _manageFlavor() async {
    final configFlavor = Config.flavor;
    final Flavor appFlavor;

    if (configFlavor.isNotEmpty) {
      appFlavor = Flavor.fromString(configFlavor);

      await localStorage.setString(AppLocalStorageKey.flavor, appFlavor.name);
    } else {
      final storedFlavor = localStorage.getString(AppLocalStorageKey.flavor);

      appFlavor = Flavor.fromString(storedFlavor);
    }

    AppFlavor.value = appFlavor;
  }

  Future<void> _configureNetwork() async {
    networkConfig.config(
      proxy: localStorage.getString(AppLocalStorageKey.proxyIp),
      isProduction: AppFlavor.isProd,
      sslPinningEnable:
          localStorage.getBool(AppLocalStorageKey.enableSslPinningForQA) ??
          false,
    );
  }
}
