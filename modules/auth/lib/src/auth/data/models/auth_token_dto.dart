import 'package:core/external_dependencies.dart';

part 'auth_token_dto.g.dart';

@JsonSerializable(createToJson: false)
class AuthTokenDto extends Equatable {
  const AuthTokenDto({required this.accessToken, required this.refreshToken});

  final String accessToken;

  final String refreshToken;

  factory AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDtoFromJson(json);

  @override
  List<Object?> get props => [accessToken, refreshToken];
}
