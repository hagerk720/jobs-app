import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/jobs_list/data/datasources/job_list_data_source.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';

import '../../../../cores/errors/exceptions.dart';

@LazySingleton(as: JobsRepositories)
class JobRepositoryImp implements JobsRepositories {
  JobListDataSource dataSource;
  LocalDataSource localDataSource;
  JobRepositoryImp({
    required this.dataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, DataModel>> getJobsList() async {
    try {
      final token = await localDataSource.getToken();
      final data = await dataSource.getJobsList(token: "Bearer ${token!}");
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
