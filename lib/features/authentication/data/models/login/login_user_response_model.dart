import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_user_response_model.g.dart';

@JsonSerializable()
class LoginUserResponseModel extends LoginUserResponse {
  LoginUserResponseModel({
    @JsonKey(name: "id") int? id ,
    @JsonKey(name : "name") String ? name });
  factory LoginUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseModelFromJson(json);

    Map<String, dynamic> toJson() => _$LoginUserResponseModelToJson(this);
    
}
