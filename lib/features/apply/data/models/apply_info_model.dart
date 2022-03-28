import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

part 'apply_info_model.g.dart';

@JsonSerializable()
class ApplyInfoModel extends ApplyInfo {
  int? user_id;
  int? job_id; 
  ApplyInfoModel({this.user_id , this.job_id});

  factory ApplyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ApplyInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyInfoModelToJson(this);
}
