import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel extends Job {
     @JsonKey(name: "JobName") String? jobName;
    @JsonKey(name: "Description") String? jobDesc;
    @JsonKey(name: "id") int? jobId;
  JobModel({
   this.jobName , this.jobDesc , this.jobId
  });

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
  @override
  String toString() {
    return '$jobName';
  }
}
