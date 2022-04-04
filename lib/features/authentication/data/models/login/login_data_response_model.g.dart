// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDataResponseModel _$LoginDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoginDataResponseModel(
      userInfo: json['user'] == null
          ? null
          : LoginUserResponseModel.fromJson(
              json['user'] as Map<String, dynamic>),
      tokenData: json['token'] as String?,
    );

Map<String, dynamic> _$LoginDataResponseModelToJson(
        LoginDataResponseModel instance) =>
    <String, dynamic>{
      'user': instance.userInfo,
      'token': instance.tokenData,
    };
