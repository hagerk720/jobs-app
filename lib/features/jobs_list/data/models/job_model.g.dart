// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      jobId: json['id'] as int?,
    )
      ..jobName = json['JobName'] as String?
      ..Description = json['Description'] as String?;

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'JobName': instance.jobName,
      'Description': instance.Description,
      'id': instance.jobId,
    };
