// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserResponceModel _$SignupUserResponceModelFromJson(
        Map<String, dynamic> json) =>
    SignupUserResponceModel()
      ..name = json['name'] as String?
      ..email = json['email'] as String?
      ..id = json['id'] as int?;

Map<String, dynamic> _$SignupUserResponceModelToJson(
        SignupUserResponceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'id': instance.id,
    };
