import 'package:dartz/dartz.dart';
import 'package:jobs_tdd/cores/errors/failure.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

abstract class JobsRepositories {
  JobsRepositories();
  Future<Either<Failure, Data>> getJobsList();
}
