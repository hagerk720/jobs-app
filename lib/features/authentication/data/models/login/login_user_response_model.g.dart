// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserResponseModel _$LoginUserResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoginUserResponseModel(
      nameUSer: json['name'] as String?,
      idUSer: json['id'] as int?,
    );

Map<String, dynamic> _$LoginUserResponseModelToJson(
        LoginUserResponseModel instance) =>
    <String, dynamic>{
      'id': instance.idUSer,
      'name': instance.nameUSer,
    };
