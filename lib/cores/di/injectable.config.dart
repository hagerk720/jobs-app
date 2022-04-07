// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/apply/data/data_source/apply_data_source.dart' as _i9;
import '../../features/apply/data/repository/appyly_repository_imp.dart'
    as _i18;
import '../../features/apply/domain/repository/apply_repository.dart' as _i17;
import '../../features/apply/domain/useCases/apply_usecase.dart' as _i19;
import '../../features/apply/presenation/bloc/cubit/apply_cubit.dart' as _i24;
import '../../features/authentication/data/datasources/login/login_data_source.dart'
    as _i6;
import '../../features/authentication/data/datasources/signup/signup_data_source.dart'
    as _i8;
import '../../features/authentication/data/repositories/login/login_repository_imp.dart'
    as _i12;
import '../../features/authentication/data/repositories/signup/signup_repository_imp.dart'
    as _i15;
import '../../features/authentication/domain/repositories/login/login_repository.dart'
    as _i11;
import '../../features/authentication/domain/repositories/signup/sign_up_repository.dart'
    as _i14;
import '../../features/authentication/domain/usecases/login/login_usecase.dart'
    as _i13;
import '../../features/authentication/domain/usecases/signup/signup_usecase.dart'
    as _i16;
import '../../features/authentication/presentaion/bloc/login/cubit/login_cubit.dart'
    as _i22;
import '../../features/authentication/presentaion/bloc/signup/cubit/signup_cubit.dart'
    as _i23;
import '../../features/jobs_list/data/datasources/job_list_data_source.dart'
    as _i4;
import '../../features/jobs_list/data/repositories/job_repository_imp.dart'
    as _i21;
import '../../features/jobs_list/domain/repositories/jobs_repository.dart'
    as _i20;
import '../../features/jobs_list/domain/usecases/get_jobs_list.dart' as _i25;
import '../../features/jobs_list/presentation/bloc/jobs_cubit/cubit/job_cubit.dart'
    as _i26;
import '../../features/localization/presentaion/bloc/cubit/locale_cubit.dart'
    as _i5;
import '../utils/shared_preferance.dart' as _i10;
import 'dio.dart' as _i27;
import 'shared_preferance.dart' as _i28; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.LocaleCubit>(() => _i5.LocaleCubit());
  gh.lazySingleton<_i6.LoginDataSource>(
      () => _i6.LoginDataSource(get<_i3.Dio>()));
  await gh.factoryAsync<_i7.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i8.SignupDataSource>(
      () => _i8.SignupDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i9.ApplyDataSource>(
      () => _i9.ApplyDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i10.LocalDataSource>(
      () => _i10.LocalDataSource(get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i11.LoginRepository>(() => _i12.LoginRepositoryImp(
      dataSource: get<_i6.LoginDataSource>(),
      localDataSource: get<_i10.LocalDataSource>()));
  gh.factory<_i13.LoginUseCase>(
      () => _i13.LoginUseCase(get<_i11.LoginRepository>()));
  gh.lazySingleton<_i14.SignupRepository>(() => _i15.SignupRepositoryImp(
      dataSource: get<_i8.SignupDataSource>(),
      localDataSource: get<_i10.LocalDataSource>()));
  gh.factory<_i16.SignupUseCase>(
      () => _i16.SignupUseCase(get<_i14.SignupRepository>()));
  gh.lazySingleton<_i17.ApplyRepository>(() => _i18.ApplyRepositoryImp(
      dataSource: get<_i9.ApplyDataSource>(),
      localDataSource: get<_i10.LocalDataSource>()));
  gh.lazySingleton<_i19.ApplyUseCase>(
      () => _i19.ApplyUseCase(get<_i17.ApplyRepository>()));
  gh.lazySingleton<_i20.JobsRepositories>(() => _i21.JobRepositoryImp(
      dataSource: get<_i4.JobListDataSource>(),
      localDataSource: get<_i10.LocalDataSource>()));
  gh.factory<_i22.LoginCubit>(() => _i22.LoginCubit(get<_i13.LoginUseCase>()));
  gh.factory<_i23.SignupCubit>(
      () => _i23.SignupCubit(get<_i16.SignupUseCase>()));
  gh.factory<_i24.ApplyCubit>(() => _i24.ApplyCubit(get<_i19.ApplyUseCase>()));
  gh.factory<_i25.GetJobList>(
      () => _i25.GetJobList(get<_i20.JobsRepositories>()));
  gh.factory<_i26.JobCubit>(() => _i26.JobCubit(get<_i25.GetJobList>()));
  return get;
}

class _$AppDio extends _i27.AppDio {}

class _$RegisterModule extends _i28.RegisterModule {}
