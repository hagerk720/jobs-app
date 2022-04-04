import 'package:dartz/dartz.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_data_response.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';


import '../../../../../cores/errors/failure.dart';

abstract class LoginRepository {
  LoginRepository();
  Future<Either<Failure, LoginDataResponse>> login(LoginUser loginUser);
}