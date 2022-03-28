// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDataResponseModel _$LoginDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoginDataResponseModel(
      token: json['token'] as String?,
    )..userEntiti = json['user'] == null
        ? null
        : LoginUserResponse.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginDataResponseModelToJson(
        LoginDataResponseModel instance) =>
    <String, dynamic>{
      'user': instance.userEntiti,
      'token': instance.token,
    };
