//import 'dart:_http';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jobs_tdd/features/apply/data/data_source/apply_data_source.dart';
import 'package:jobs_tdd/features/apply/data/repository/appyly_repository_imp.dart';
import 'package:jobs_tdd/features/apply/domain/repository/apply_repository.dart';
import 'package:jobs_tdd/features/apply/domain/useCases/apply_usecase.dart';
import 'package:jobs_tdd/features/authentication/data/datasources/login/login_data_source.dart';
import 'package:jobs_tdd/features/authentication/data/repositories/login/login_repository_imp.dart';
import 'package:jobs_tdd/features/authentication/data/repositories/signup/signup_repository_imp.dart';
import 'package:jobs_tdd/features/authentication/domain/repositories/login/login_repository.dart';
import 'package:jobs_tdd/features/authentication/domain/usecases/login/login_usecase.dart';

import 'package:jobs_tdd/features/jobs_list/data/datasources/job_list_data_source.dart';
import 'package:jobs_tdd/features/jobs_list/data/repositories/job_repository_imp.dart';
import 'package:jobs_tdd/features/jobs_list/domain/repositories/jobs_repository.dart';
import 'package:jobs_tdd/features/jobs_list/domain/usecases/get_jobs_list.dart';
import 'package:jobs_tdd/features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart';

import '../features/authentication/data/datasources/signup/signup_data_source.dart';
import '../features/authentication/domain/repositories/signup/sign_up_repository.dart';
import '../features/authentication/domain/usecases/signup/signup_usecase.dart';

final locator = GetIt.instance;
//Dio? dio;
void setUp() {
  Dio dio = Dio();
  dio.options.validateStatus=(status)=>status! < 500;
  // logic
  locator.registerLazySingleton<JobCubit>(() => JobCubit());
  locator
      .registerLazySingleton<JobListDataSource>(() => JobListDataSource(dio));

  // locator.registerLazySingleton<JobsRepositories>(
  //   () => JobRepositoryImp(dataSource: locator.get<JobListDataSource>()));
  locator.registerLazySingleton<JobsRepositories>(() => JobRepositoryImp());

  locator.registerLazySingleton<GetJobList>(
      () => GetJobList(locator.get<JobsRepositories>()));

  locator.registerLazySingleton<SignupDataSource>(() => SignupDataSource(dio));

locator.registerLazySingleton<SignupRepository>(() => SignupRepositoryImp());
 locator.registerLazySingleton<SignupUseCase>(
      () => SignupUseCase(locator.get<SignupRepository>() ));

    locator.registerLazySingleton<LoginDataSource>(() => LoginDataSource(dio));
locator.registerLazySingleton<LoginRepository>(() => LoginRepositoryImp());
 locator.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(locator.get<LoginRepository>() ));

    locator.registerLazySingleton<ApplyDataSource>(() => ApplyDataSource(dio));
locator.registerLazySingleton<ApplyRepository>(() => ApplyRepositoryImp());
 locator.registerLazySingleton<ApplyUseCase>(
      () => ApplyUseCase(locator.get<ApplyRepository>() ));
    
}
