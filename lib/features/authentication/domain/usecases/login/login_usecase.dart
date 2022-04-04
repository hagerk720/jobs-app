import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/domain/repositories/login/login_repository.dart';

import '../../../../../cores/errors/failure.dart';
import '../../entities/login/login_data_response.dart';
@injectable
class LoginUseCase {
  final LoginRepository loginRepository;
  LoginUseCase(
    this.loginRepository,
  );
  Future<Either<Failure, LoginDataResponse>?> call(LoginUser loginUser) async {
    return await loginRepository.login(loginUser);
  }
}