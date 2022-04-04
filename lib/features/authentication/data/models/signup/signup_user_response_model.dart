import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user_response.dart';

part 'signup_user_response_model.g.dart';

@JsonSerializable()
class SignupUserResponceModel extends SignupUserResponse {
  
 const SignupUserResponceModel({
 required String name,
 required String  email,
 required int id,
  }):super(email: email , name:  name , id: id);
  factory SignupUserResponceModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserResponceModelFromJson(json);
  Map<String, dynamic> toJson() => _$SignupUserResponceModelToJson(this);

      
}
