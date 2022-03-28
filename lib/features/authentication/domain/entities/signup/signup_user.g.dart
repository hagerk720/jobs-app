// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignup _$UserSignupFromJson(Map<String, dynamic> json) => UserSignup(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['password_confirmation'] as String?,
    );

Map<String, dynamic> _$UserSignupToJson(UserSignup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
    };
