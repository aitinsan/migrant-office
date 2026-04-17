// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationsListResponseDto _$ApplicationsListResponseDtoFromJson(
  Map<String, dynamic> json,
) => ApplicationsListResponseDto(
  total: json['total'] as int,
  applications:
      (json['applications'] as List<dynamic>)
          .map((e) => ApplicationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  nextCursor: json['nextCursor'] as String?,
);
