// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      jobName: json['JobName'] as String?,
      Description: json['Description'] as String?,
      jobId: json['id'] as int?,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'JobName': instance.jobName,
      'Description': instance.Description,
      'id': instance.jobId,
    };
