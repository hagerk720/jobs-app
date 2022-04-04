import 'package:dartz/dartz.dart';

import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:jobs_tdd/cores/locator.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/jobs_list/data/datasources/job_list_data_source.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';

import '../../../../cores/errors/exceptions.dart';

JobListDataSource dataSource = locator.get<JobListDataSource>();

class JobRepositoryImp implements JobsRepositories {
    LocalDataSource localDataSource;
  JobRepositoryImp({
    required this.localDataSource,
  });
  
  @override
  Future<Either<Failure, DataModel>> getJobsList() async {
    try {
      final token = await localDataSource.getToken();
      print("tokeeen repo $token");
      final data = await dataSource.getJobsList(token: 'Bearer ${token!}');
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
