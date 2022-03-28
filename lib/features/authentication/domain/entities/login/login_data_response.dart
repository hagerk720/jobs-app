import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user_response.dart';

//part 'login_data_response.g.dart';
//@JsonSerializable()
class LoginDataResponse {
@JsonKey(name: "user") LoginUserResponse? userEntiti;
@JsonKey(name: "token") String? token; 
  LoginDataResponse({
    this.userEntiti,
    this.token,
  });
 
}
