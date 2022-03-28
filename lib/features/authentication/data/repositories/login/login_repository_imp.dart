import 'package:jobs_tdd/features/authentication/data/models/login/login_user_model.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:dartz/dartz.dart';

import 'package:jobs_tdd/features/authentication/domain/repositories/login/login_repository.dart';

import '../../../../../cores/errors/exceptions.dart';
import '../../../../../cores/locator.dart';
import '../../../domain/entities/login/login_data_response.dart';
import '../../datasources/login/login_data_source.dart';


LoginDataSource dataSource = locator.get<LoginDataSource>();

class LoginRepositoryImp implements LoginRepository {
  @override
  Future<Either<Failure, LoginDataResponse>> login(LoginUser loginUser) async {
    //print(toModel(loginUser).toJson());
    try {
      final data = await dataSource.login(loginUser);
      print("Data $data");
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
    
  }
  LoginUserModel toModel(LoginUser loginUser) {
    return LoginUserModel(
        email: loginUser.email, password: loginUser.password );
  }

}
