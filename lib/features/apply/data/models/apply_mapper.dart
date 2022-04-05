import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

extension Mapper on ApplyInfo {
  ApplyInfoModel toModel() => ApplyInfoModel(
       userId: userId , 
       jobId: jobId,
       expectedSalary: expectedSalary,
       currentSalary: currentSalary,
      );
}