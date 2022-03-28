import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/signup/signup_user_response.dart';


part 'signup_user_response_model.g.dart';

@JsonSerializable()
class SignupUserResponceModel extends SignupUserResponse {
   SignupUserResponceModel(
/* String? name,
 String? email,
 int? id*/
  );
  factory SignupUserResponceModel.fromJson(Map<String, dynamic> json) =>
      _$SignupUserResponceModelFromJson(json);
}
