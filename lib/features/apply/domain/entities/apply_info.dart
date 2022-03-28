import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';

part 'apply_info.g.dart';
@JsonSerializable()
class ApplyInfo {
  @JsonKey(name: "user_id")
  int? user_id;
  @JsonKey(name: "job_id")
  int? job_id; 
  ApplyInfo({
    this.user_id,
    this.job_id,
  });
ApplyInfoModel toModel(ApplyInfo applyInfo) {
    return ApplyInfoModel(
        user_id: applyInfo.user_id, job_id: applyInfo.job_id );
  }
  
}
