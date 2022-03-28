import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user.dart';

part 'signup_user_model.g.dart';

@JsonSerializable()
class SignupUserModel extends UserSignup {
  SignupUserModel({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
  });
  factory SignupUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupUserModelToJson(this);
}
