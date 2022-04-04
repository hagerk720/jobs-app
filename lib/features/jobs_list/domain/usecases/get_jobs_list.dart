import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/cores/errors/failure.dart';

import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';

import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';
@injectable
class GetJobList  {
  final JobsRepositories jobsRepositories;

  GetJobList(this.jobsRepositories);
  Future<Either<Failure, Data>> call() async {
    return await jobsRepositories.getJobsList();
  }
}
