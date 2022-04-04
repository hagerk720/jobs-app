// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      jobName: json['JobName'] as String?,
      jobDesc: json['Description'] as String?,
      jobId: json['id'] as int?,
    )
      ..nameJob = json['nameJob'] as String?
      ..description = json['description'] as String?
      ..idJob = json['idJob'] as int?;

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'nameJob': instance.nameJob,
      'description': instance.description,
      'idJob': instance.idJob,
      'JobName': instance.jobName,
      'Description': instance.jobDesc,
      'id': instance.jobId,
    };
