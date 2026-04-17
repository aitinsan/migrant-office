import 'package:applications/src/applications/data/models/application_dto.dart';
import 'package:core/external_dependencies.dart';

part 'applications_list_response_dto.g.dart';

@JsonSerializable(createToJson: false)
class ApplicationsListResponseDto extends Equatable {
  const ApplicationsListResponseDto({
    required this.total,
    required this.applications,
    this.nextCursor,
  });

  final int total;
  final String? nextCursor;
  final List<ApplicationDto> applications;

  factory ApplicationsListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationsListResponseDtoFromJson(json);

  @override
  List<Object?> get props => [total, nextCursor, applications];
}
