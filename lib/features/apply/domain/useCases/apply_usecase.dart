import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

import '../../../../cores/errors/failure.dart';
import '../repository/apply_repository.dart';
@lazySingleton
class ApplyUseCase {
  final ApplyRepository applyRepository;
  ApplyUseCase(
    this.applyRepository 
  );
  Future<Either<Failure, String>?> call(
      ApplyInfo applyInfo) async {
     
    return await applyRepository.apply(applyInfo);
  }
}
