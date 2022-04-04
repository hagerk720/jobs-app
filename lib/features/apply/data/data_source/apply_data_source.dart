import 'package:dio/dio.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';
import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';
import 'package:retrofit/http.dart';

part 'apply_data_source.g.dart';

@RestApi(baseUrl: baseURL)
abstract class ApplyDataSource {
  factory ApplyDataSource(Dio dio) = _ApplyDataSource;

  @POST("appliedJob")
  Future<String> apply(@Body() ApplyInfoModel applyInfoModel);
}
