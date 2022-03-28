import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/data/models/login/login_user_response_model.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_data_response.dart';

import '../../../domain/entities/login/login_user_response.dart';

part 'login_data_response_model.g.dart';

@JsonSerializable()
class LoginDataResponseModel extends LoginDataResponse {
  LoginDataResponseModel(
      { LoginUserResponseModel? user,
        String? token });

  factory LoginDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataResponseModelToJson(this);


}
