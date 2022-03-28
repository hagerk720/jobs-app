import 'package:jobs_tdd/features/authentication/data/models/login/login_user_model.dart';
import 'package:json_annotation/json_annotation.dart';

//
part 'login_user.g.dart';

@JsonSerializable()
class LoginUser {
//  @JsonKey(name: "name")
  String? email;
//  @JsonKey(name: "password")
  String? password;

  LoginUser({this.email, this.password});

  

  Map<String, dynamic> toJson() => _$LoginUserToJson(this);

}
