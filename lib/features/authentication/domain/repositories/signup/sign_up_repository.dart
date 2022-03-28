import 'package:dartz/dartz.dart';

import '../../../../../cores/errors/failure.dart';
import '../../entities/signup/signup_data_response.dart';
import '../../entities/signup/signup_user.dart';


abstract class SignupRepository {
  SignupRepository();
  Future<Either<Failure, SignupDataResponse>> signUp(UserSignup userSignup);
}
