// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      dataInfo: (json['data'] as List<dynamic>?)
          ?.map((e) => JobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      messageInfo: json['Message'] as String?,
    );

// ignore: unused_element
Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'data': instance.dataInfo,
      'Message': instance.messageInfo,
    };
