// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDataResponse _$SignupDataResponseFromJson(Map<String, dynamic> json) =>
    SignupDataResponse(
      user: json['user'] == null
          ? null
          : SignupUserResponse.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$SignupDataResponseToJson(SignupDataResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
