// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserResponse _$SignupUserResponseFromJson(Map<String, dynamic> json) =>
    SignupUserResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$SignupUserResponseToJson(SignupUserResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'id': instance.id,
    };
