import 'package:core/external_dependencies.dart';

part 'application_dto.g.dart';

@JsonSerializable(createToJson: false)
class ApplicationDto extends Equatable {
  const ApplicationDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.pan,
    required this.createdAt,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final String pan;
  final String createdAt;

  factory ApplicationDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDtoFromJson(json);

  @override
  List<Object?> get props => [id, firstName, lastName, phone, pan, createdAt];
}
