// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyInfoModel _$ApplyInfoModelFromJson(Map<String, dynamic> json) =>
    ApplyInfoModel(
      userId: json['user_id'] as int?,
      jobId: json['job_id'] as int?,
    )
      ..idUser = json['idUser'] as int?
      ..idJob = json['idJob'] as int?;

Map<String, dynamic> _$ApplyInfoModelToJson(ApplyInfoModel instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'idJob': instance.idJob,
      'user_id': instance.userId,
      'job_id': instance.jobId,
    };
