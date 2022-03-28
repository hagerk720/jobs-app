import 'package:dartz/dartz.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

import '../../../../cores/errors/failure.dart';
import '../repository/apply_repository.dart';

class ApplyUseCase {
  final ApplyRepository applyRepository;
  //Either<Failure, SignupDataResponse>? sign; 
  ApplyUseCase(
    this.applyRepository 
  );
  Future<Either<Failure, String>?> call(
      ApplyInfo applyInfo) async {
     
    return await applyRepository.apply(applyInfo);
  }
}
