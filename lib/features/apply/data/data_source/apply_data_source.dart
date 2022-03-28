import 'package:dio/dio.dart';
import 'package:jobs_tdd/features/apply/data/models/apply_info_model.dart';
import 'package:jobs_tdd/features/apply/domain/entities/apply_info.dart';
import 'package:retrofit/http.dart';

part 'apply_data_source.g.dart';

@RestApi(baseUrl: "https://0a20-154-180-84-54.ngrok.io/api/")
abstract class ApplyDataSource {
  factory ApplyDataSource(Dio dio, {String baseUrl}) = _ApplyDataSource;

  @POST("apply")
  Future<String> apply(@Body() ApplyInfoModel applyInfoModel);
}
