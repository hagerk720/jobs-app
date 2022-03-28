import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_response.g.dart';
@JsonSerializable()
class LoginUserResponse {
 @JsonKey(name: "id") 
  int? id;
 @JsonKey(name: "name") 
String? name;

  LoginUserResponse({this.id, this.name});
 factory LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseFromJson(json); 


}
