import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../../cores/errors/exceptions.dart';
import '../../../../../cores/locator.dart';
import '../../../domain/entities/signup/signup_user.dart';
import '../../../domain/repositories/signup/sign_up_repository.dart';
import '../../datasources/signup/signup_data_source.dart';
import '../../models/signup/signup_data_response_model.dart';

SignupDataSource dataSource = locator.get<SignupDataSource>();

class SignupRepositoryImp implements SignupRepository {
  @override
  Future<Either<Failure, SignupDataResponseModel>> signUp(
      UserSignup userSignup) async {
    print(userSignup.toJson());
    try {
      final data = await dataSource.signup(userSignup);
      print("Data $data");
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
