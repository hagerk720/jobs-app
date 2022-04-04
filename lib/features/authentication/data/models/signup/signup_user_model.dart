import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user.dart';

part 'signup_user_model.g.dart';

@JsonSerializable()
class SignupUserModel extends UserSignup {
  @JsonKey(name: "name")final String? nameUser ;
  @JsonKey(name: "email")final  String? emailUser ;
  @JsonKey(name: "passowrd")final  String? passwordUser;
  @JsonKey(name: "confirmation_passowrd")final  String? confirmPassword ; 
 const SignupUserModel({
    required this.nameUser , required this.emailUser , required this.passwordUser , this.confirmPassword , 
  }):super(name: nameUser , email:  emailUser , password: passwordUser , password_confirmation: confirmPassword);
  factory SignupUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupUserModelToJson(this);
}
