import 'package:applications/applications.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';

mixin ApplicationsModuleDependencies implements CoreModule {
  RestClientService get authRestClient;
}

class ApplicationsDiModule
    extends FeatureModule<ApplicationsModuleDependencies> {
  static const int _defaultLimit = 100;

  late final ApplicationsNetworkDatasource applicationsNetworkDatasource;
  late final ApplicationsRepository applicationsRepository;
  late final GetApplicationsUseCase getApplicationsUseCase;
  late final GetAgentProfileUseCase getAgentProfileUseCase;
  late final GetOnboardingAppLinkUseCase getOnboardingAppLinkUseCase;
  late final DeleteApplicationUseCase deleteApplicationUseCase;
  late final CreateApplicationUseCase createApplicationUseCase;
  late final ApplicationsBloc applicationsBloc;
  late final CreateApplicationBloc createApplicationBloc;

  @override
  void init(ApplicationsModuleDependencies coreModule) {
    super.init(coreModule);

    applicationsNetworkDatasource = ApplicationsNetworkDatasourceImpl(
      restClientService: coreModule.authRestClient,
    );

    applicationsRepository = ApplicationsRepositoryImpl(
      networkDatasource: applicationsNetworkDatasource,
    );

    getApplicationsUseCase = GetApplicationsUseCaseImpl(
      repository: applicationsRepository,
    );

    getAgentProfileUseCase = GetAgentProfileUseCaseImpl(
      repository: applicationsRepository,
    );

    getOnboardingAppLinkUseCase = GetOnboardingAppLinkUseCaseImpl(
      repository: applicationsRepository,
    );

    deleteApplicationUseCase = DeleteApplicationUseCaseImpl(
      repository: applicationsRepository,
    );

    createApplicationUseCase = CreateApplicationUseCaseImpl(
      repository: applicationsRepository,
    );

    applicationsBloc = ApplicationsBloc(
      getApplicationsUseCase: getApplicationsUseCase,
      getAgentProfileUseCase: getAgentProfileUseCase,
      getOnboardingAppLinkUseCase: getOnboardingAppLinkUseCase,
      deleteApplicationUseCase: deleteApplicationUseCase,
      initialState: const ApplicationsState$Idle(
        applications: [],
        total: 0,
        nextCursor: null,
        limit: _defaultLimit,
      ),
    );

    createApplicationBloc = CreateApplicationBloc(
      createApplicationUseCase: createApplicationUseCase,
    );
  }

  @override
  void dispose() {
    applicationsBloc.close();
    createApplicationBloc.close();
    super.dispose();
  }
}
