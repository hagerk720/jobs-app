
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'job.g.dart';

@JsonSerializable()
class Job {
  @JsonKey(name: "JobName") String? jobName;
  @JsonKey(name :"Description") String? Description;
 /// String? publishDate;
  @JsonKey(name: "id") int? jobId; 
 // Job({this.jobName, this.jobDesc, this.publishDate, this.applyedNo});
 Job({this.jobName, this.Description , this.jobId});
 factory Job.fromJson(Map<String, dynamic> json) =>
      _$JobFromJson(json);
}
