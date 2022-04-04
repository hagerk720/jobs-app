import 'package:dartz/dartz.dart';
import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';

abstract class JobsRepositories {
  JobsRepositories();
  Future<Either<Failure, Data>> getJobsList();
}
