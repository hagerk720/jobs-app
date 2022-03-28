part of 'job_cubit.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial() = _Initial;
  const factory JobState.loaded(List<Job>? data) = Loaded;

}
