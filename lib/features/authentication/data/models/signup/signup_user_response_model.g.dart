// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserResponceModel _$SignupUserResponceModelFromJson(
        Map<String, dynamic> json) =>
    SignupUserResponceModel(
      userName: json['name'] as String?,
      userEmail: json['email'] as String?,
      userId: json['id'] as int?,
    );

// ignore: unused_element
Map<String, dynamic> _$SignupUserResponceModelToJson(
        SignupUserResponceModel instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'email': instance.userEmail,
      'id': instance.userId,
    };
