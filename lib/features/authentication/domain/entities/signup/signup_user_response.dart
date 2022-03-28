import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_user_response.g.dart';

@JsonSerializable()
class SignupUserResponse {
@JsonKey(name: "name") String? name;
@JsonKey(name: "email") String? email;
@JsonKey(name: "id") int? id; 
  SignupUserResponse({
    this.name,
    this.email,
    this.id,
  });
 factory SignupUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupUserResponseFromJson(json);
  
  
}
