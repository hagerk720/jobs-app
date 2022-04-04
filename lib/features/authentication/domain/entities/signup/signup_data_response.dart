import 'package:equatable/equatable.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_user_response.dart';


class SignupDataResponse extends Equatable{
final SignupUserResponse? user;
final String? token; 
const SignupDataResponse({
  required  this.user,
  required  this.token,  
  });

  @override
  List<Object?> get props => [user , token];

}
