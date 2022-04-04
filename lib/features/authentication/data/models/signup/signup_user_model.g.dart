// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserModel _$SignupUserModelFromJson(Map<String, dynamic> json) =>
    SignupUserModel(
      nameUser: json['name'] as String?,
      emailUser: json['email'] as String?,
      passwordUser: json['passowrd'] as String?,
      confirmPassword: json['confirmation_passowrd'] as String?,
    );

Map<String, dynamic> _$SignupUserModelToJson(SignupUserModel instance) =>
    <String, dynamic>{
      'name': instance.nameUser,
      'email': instance.emailUser,
      'passowrd': instance.passwordUser,
      'confirmation_passowrd': instance.confirmPassword,
    };
