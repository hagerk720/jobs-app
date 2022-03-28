import 'package:dartz/dartz.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

import '../../../../cores/errors/failure.dart';

abstract class ApplyRepository {
  //ApplyRepository();
  Future<Either<Failure, String>> apply(ApplyInfo applyInfo);
}