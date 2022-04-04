// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserModel _$SignupUserModelFromJson(Map<String, dynamic> json) =>
    SignupUserModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      password_confirmation: json['password_confirmation'],
    );

Map<String, dynamic> _$SignupUserModelToJson(SignupUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
    };
