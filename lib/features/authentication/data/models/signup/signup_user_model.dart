import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user.dart';

part 'signup_user_model.g.dart';

@JsonSerializable()
class SignupUserModel extends UserSignup {

 const SignupUserModel({
    // ignore: non_constant_identifier_names
    required name , required email,required password ,required password_confirmation , 
  }):super(name: name , email:  email , password: password , password_confirmation: password_confirmation);
  factory SignupUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupUserModelToJson(this);
}
