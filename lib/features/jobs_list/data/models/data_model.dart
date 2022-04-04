import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel extends Data {
  final List<JobModel>? data;
  final String? Message; 
  const DataModel({this.data, this.Message})
      : super(dataEntity: data, messageEntity: Message);
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
