import 'package:dartz/dartz.dart';

import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:jobs_tdd/cores/locator.dart';
import 'package:jobs_tdd/features/jobs_list/data/datasources/job_list_data_source.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';

import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';

import '../../../../cores/errors/exceptions.dart';
  JobListDataSource dataSource = locator.get<JobListDataSource>();
class JobRepositoryImp implements JobsRepositories {
  @override
  Future<Either<Failure,DataModel>> getJobsList() async {
    try {
      final data = await dataSource.getJobsList();
      print("Data $data");
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
