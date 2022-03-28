import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_user_response.dart';
part 'signup_data_response.g.dart';

@JsonSerializable()
class SignupDataResponse {
 @JsonKey(name: "user") SignupUserResponse? user;
 @JsonKey(name: "token") String? token; 
 SignupDataResponse({
    this.user,
    this.token,  
  });
  factory SignupDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupDataResponseFromJson(json);
}
