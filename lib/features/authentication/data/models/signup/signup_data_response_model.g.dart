// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDataResponseModel _$SignupDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    SignupDataResponseModel()
      ..user = json['user'] == null
          ? null
          : SignupUserResponse.fromJson(json['user'] as Map<String, dynamic>)
      ..token = json['token'] as String?;

Map<String, dynamic> _$SignupDataResponseModelToJson(
        SignupDataResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
