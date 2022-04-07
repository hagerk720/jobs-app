// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      JobName: json['JobName'] as String?,
      Description: json['Description'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'JobName': instance.JobName,
      'Description': instance.Description,
      'id': instance.id,
    };
