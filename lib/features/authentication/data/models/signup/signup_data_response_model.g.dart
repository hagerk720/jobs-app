// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDataResponseModel _$SignupDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    SignupDataResponseModel(
      userInfo: json['user'] == null
          ? null
          : SignupUserResponceModel.fromJson(
              json['user'] as Map<String, dynamic>),
      tokenData: json['token'] as String?,
    );

// ignore: unused_element
Map<String, dynamic> _$SignupDataResponseModelToJson(
        SignupDataResponseModel instance) =>
    <String, dynamic>{
      'user': instance.userInfo,
      'token': instance.tokenData,
    };
