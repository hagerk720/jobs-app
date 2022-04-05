
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';
import 'package:retrofit/http.dart';

part 'apply_data_source.g.dart';

@lazySingleton
@RestApi(baseUrl: baseURL)
abstract class ApplyDataSource {
  @factoryMethod
  factory ApplyDataSource(Dio dio) = _ApplyDataSource;
  @POST("appliedJob")
  @MultiPart()
  Future<String> apply(

   { 
     //@Header('Authorization') required String token,
    @Part(name: "user_id") int? userId,
    @Part(name: "job_id") int? jobId,
    @Part(name: "expected_salary") int? expectedSalary,
    @Part(name: "current_salary") int? currentSalaru,
    @Part(name: "cv") File? fileCV,}
  );
}
