import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:jobs_tdd/cores/locator.dart';
import 'package:jobs_tdd/features/jobs_list/data/datasources/job_list_data_source.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:jobs_tdd/features/jobs_list/data/repositories/job_repository_imp.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';
import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';
import 'package:jobs_tdd/features/jobs_list/domain/usecases/get_jobs_list.dart';

import '../../../../../../cores/errors/failure.dart';

part 'job_state.dart';
part 'job_cubit.freezed.dart';

class JobCubit extends Cubit<JobState> {
  JobCubit() : super(JobState.initial());

  Future<void> getAllJobs() async {
    await locator.get<GetJobList>().call().then((date) {
      date.fold(
        (exception) => {},
        (jobs) => { 
          print(jobs), 
          emit(JobState.loaded(jobs.data))},
      );
    });
  }
}
