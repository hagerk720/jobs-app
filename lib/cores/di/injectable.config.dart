// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/apply/data/data_source/apply_data_source.dart' as _i8;
import '../../features/apply/data/repository/appyly_repository_imp.dart'
    as _i17;
import '../../features/apply/domain/repository/apply_repository.dart' as _i16;
import '../../features/apply/domain/useCases/apply_usecase.dart' as _i18;
import '../../features/apply/presenation/bloc/cubit/apply_cubit.dart' as _i23;
import '../../features/authentication/data/datasources/login/login_data_source.dart'
    as _i5;
import '../../features/authentication/data/datasources/signup/signup_data_source.dart'
    as _i7;
import '../../features/authentication/data/repositories/login/login_repository_imp.dart'
    as _i11;
import '../../features/authentication/data/repositories/signup/signup_repository_imp.dart'
    as _i14;
import '../../features/authentication/domain/repositories/login/login_repository.dart'
    as _i10;
import '../../features/authentication/domain/repositories/signup/sign_up_repository.dart'
    as _i13;
import '../../features/authentication/domain/usecases/login/login_usecase.dart'
    as _i12;
import '../../features/authentication/domain/usecases/signup/signup_usecase.dart'
    as _i15;
import '../../features/authentication/presentaion/bloc/login/cubit/login_cubit.dart'
    as _i21;
import '../../features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart'
    as _i22;
import '../../features/jobs_list/data/datasources/job_list_data_source.dart'
    as _i4;
import '../../features/jobs_list/data/repositories/job_repository_imp.dart'
    as _i20;
import '../../features/jobs_list/domain/repositories/jobs_repository.dart'
    as _i19;
import '../../features/jobs_list/domain/usecases/get_jobs_list.dart' as _i24;
import '../../features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart'
    as _i25;
import '../utils/shared_preferance.dart' as _i9;
import 'dio.dart' as _i26;
import 'shared_preferance.dart' as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDio = _$AppDio();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => appDio.getDio);
  gh.lazySingleton<_i4.JobListDataSource>(
      () => _i4.JobListDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i5.LoginDataSource>(
      () => _i5.LoginDataSource(get<_i3.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.SignupDataSource>(
      () => _i7.SignupDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i8.ApplyDataSource>(
      () => _i8.ApplyDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i9.LocalDataSource>(
      () => _i9.LocalDataSource(get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i10.LoginRepository>(() => _i11.LoginRepositoryImp(
      dataSource: get<_i5.LoginDataSource>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.factory<_i12.LoginUseCase>(
      () => _i12.LoginUseCase(get<_i10.LoginRepository>()));
  gh.lazySingleton<_i13.SignupRepository>(() => _i14.SignupRepositoryImp(
      dataSource: get<_i7.SignupDataSource>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.factory<_i15.SignupUseCase>(
      () => _i15.SignupUseCase(get<_i13.SignupRepository>()));
  gh.lazySingleton<_i16.ApplyRepository>(() => _i17.ApplyRepositoryImp(
      dataSource: get<_i8.ApplyDataSource>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.lazySingleton<_i18.ApplyUseCase>(
      () => _i18.ApplyUseCase(get<_i16.ApplyRepository>()));
  gh.lazySingleton<_i19.JobsRepositories>(() => _i20.JobRepositoryImp(
      dataSource: get<_i4.JobListDataSource>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.factory<_i21.LoginCubit>(() => _i21.LoginCubit(get<_i12.LoginUseCase>()));
  gh.factory<_i22.SignupCubit>(
      () => _i22.SignupCubit(get<_i15.SignupUseCase>()));
  gh.factory<_i23.ApplyCubit>(() => _i23.ApplyCubit(get<_i18.ApplyUseCase>()));
  gh.factory<_i24.GetJobList>(
      () => _i24.GetJobList(get<_i19.JobsRepositories>()));
  gh.factory<_i25.JobCubit>(() => _i25.JobCubit(get<_i24.GetJobList>()));
  return get;
}

class _$AppDio extends _i26.AppDio {}

class _$RegisterModule extends _i27.RegisterModule {}
