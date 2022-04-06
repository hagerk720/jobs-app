import 'dart:io';

import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';


class ApplyInfoModel extends ApplyInfo {

 const ApplyInfoModel(
      {int? userId, int? jobId, int? currentSalary, int? expectedSalary , File? fileCV,})
      : super(
          currentSalary: currentSalary,
          expectedSalary: expectedSalary,
          userId: userId,
          jobId: jobId,
          fileCV: fileCV,
        );

  
}
