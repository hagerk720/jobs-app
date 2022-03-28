import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/signup/signup_user_model.dart';

part 'signup_user.g.dart';

@JsonSerializable()
class UserSignup {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "password_confirmation")
  String? confirmPassword;
  UserSignup({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
  });
   UserSignup.login({
    this.email,
    this.password,
  });
  SignupUserModel toModel(UserSignup userSignup) {
    return SignupUserModel(
        name: userSignup.name,
        email: userSignup.email,
        password: userSignup.password,
        confirmPassword: userSignup.confirmPassword);
  }

  factory UserSignup.fromJson(Map<String, dynamic> json) =>
      _$UserSignupFromJson(json);

  Map<String, dynamic> toJson() => _$UserSignupToJson(this);
}
