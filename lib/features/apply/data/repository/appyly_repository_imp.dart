import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:jobs_tdd/cores/utils/shared_preferance.dart';
import 'package:jobs_tdd/features/apply/data/data_source/apply_data_source.dart';
import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';
import 'package:jobs_tdd/features/apply/data/models/apply_mapper.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';

import '../../../../cores/errors/exceptions.dart';
import '../../../../cores/errors/failure.dart';
import '../../domain/repository/apply_repository.dart';

@LazySingleton(as: ApplyRepository)
class ApplyRepositoryImp implements ApplyRepository {
  ApplyDataSource dataSource;
  LocalDataSource localDataSource;
  ApplyRepositoryImp({
    required this.dataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, String>> apply(ApplyInfo applyInfo) async {
    ApplyInfoModel applyInfoModel;
    try {
      final token = await localDataSource.getToken();
      final userId = await localDataSource.getUserId();
      applyInfoModel = applyInfo.toModel();
      final data = await dataSource.apply(
       // token: "Bearer ${token!}",
        userId: userId,
        jobId: applyInfoModel.jobId,
        expectedSalary: applyInfoModel.expectedSalary,
        currentSalaru: applyInfoModel.currentSalary,
        fileCV: applyInfo.fileCV,
      );
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
