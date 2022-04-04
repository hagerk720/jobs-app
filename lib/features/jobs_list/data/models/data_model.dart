import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel extends Data {
 @JsonKey(name: "data")final List<JobModel>? dataInfo; 
  @JsonKey(name: 'Message')final String? messageInfo; 
 const  DataModel(
    {
required this.dataInfo , required this.messageInfo
    }
  ):super(data: dataInfo , message: messageInfo);
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
