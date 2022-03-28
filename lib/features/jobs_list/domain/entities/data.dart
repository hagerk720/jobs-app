import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';


@JsonSerializable()
class Data {
  @JsonKey(name: "data")
  List<Job>? data;
  @JsonKey(name: "Message")
  String? Message;

  Data({this.data, this.Message});

}
