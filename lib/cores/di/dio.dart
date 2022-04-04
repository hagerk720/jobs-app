import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';

@module
abstract class AppDio {
  Dio get getDio => Dio(
        BaseOptions(
          baseUrl: baseURL,
          receiveDataWhenStatusError: true,
        ),
      );
}