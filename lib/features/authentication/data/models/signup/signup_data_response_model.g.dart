// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDataResponseModel _$SignupDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    SignupDataResponseModel(
      json['user'] == null
          ? null
          : SignupUserResponceModel.fromJson(
              json['user'] as Map<String, dynamic>),
      json['token'] as String?,
    );

Map<String, dynamic> _$SignupDataResponseModelToJson(
        SignupDataResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
