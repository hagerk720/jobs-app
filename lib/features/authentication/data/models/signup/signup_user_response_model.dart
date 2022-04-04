import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user_response.dart';

part 'signup_user_response_model.g.dart';

@JsonSerializable()
class SignupUserResponceModel extends SignupUserResponse {
  @JsonKey(name: "name")
 final String? userName;
  @JsonKey(name: "email")
 final String? userEmail;
  @JsonKey(name: "id")
 final int? userId;
 const SignupUserResponceModel({
   required this.userName,
   required this.userEmail,
   required this.userId,
  }):super(email: userEmail , name:  userName , id: userId);
  factory SignupUserResponceModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserResponceModelFromJson(json);
}
