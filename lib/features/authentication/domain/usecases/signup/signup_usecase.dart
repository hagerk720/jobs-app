import 'package:dartz/dartz.dart';

import '../../../../../cores/errors/failure.dart';
import '../../entities/signup/signup_data_response.dart';
import '../../entities/signup/signup_user.dart';
import '../../repositories/signup/sign_up_repository.dart';

class SignupUseCase {
  final SignupRepository signupRepository;
  Either<Failure, SignupDataResponse>? sign; 
  SignupUseCase(
    this.signupRepository,
  );
  Future<Either<Failure, SignupDataResponse>?> call(
      UserSignup userSignup) async {
    sign = await signupRepository.signUp(userSignup);
    return sign;
  }
}
