import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';


class ApplyInfo {
  
  int? idUser;
  
  int? idJob; 
  ApplyInfo({
    this.idUser,
    this.idJob,
  });
ApplyInfoModel toModel(ApplyInfo applyInfo) {
    return ApplyInfoModel(
        userId: applyInfo.idUser, jobId: applyInfo.idJob );
  }
  
}
