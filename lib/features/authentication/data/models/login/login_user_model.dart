import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel extends LoginUser {
 @JsonKey(name: "email") final String? emailUser;
 @JsonKey(name: "password") final String? passwordUser ;
  const LoginUserModel({
  required this.emailUser ,
  required this.passwordUser , 
  }):super(email: emailUser  , password: passwordUser) ;
  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);
}
