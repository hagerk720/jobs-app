import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

part 'apply_info_model.g.dart';

@JsonSerializable()
class ApplyInfoModel extends ApplyInfo {
  
  @JsonKey(name: "user_id") int? userId;
  @JsonKey(name: "job_id") int? jobId; 
  ApplyInfoModel({ this.userId, this.jobId});

  factory ApplyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ApplyInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyInfoModelToJson(this);
}
