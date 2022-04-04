// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel extends Job {
   final String? JobName ;
   final String? Description ;
   final int? id ;
const JobModel({
    this.JobName , this.Description , this.id
  }):super(nameJob: JobName , description: Description , idJob: id);

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
  
}
