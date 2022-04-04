import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/cores/locator.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

import 'package:jobs_tdd/features/jobs_list/domain/usecases/get_jobs_list.dart';


part 'job_state.dart';
part 'job_cubit.freezed.dart';

class JobCubit extends Cubit<JobState> {
  JobCubit() : super(const JobState.initial());

  Future<void> getAllJobs() async {
    await locator.get<GetJobList>().call().then((date) {
      date.fold(
        (exception) => {},
        (jobs) => { 
           
          emit(JobState.loaded(jobs.data))},
      );
    });
  }
}
