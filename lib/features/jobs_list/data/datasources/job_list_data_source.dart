import 'package:dio/dio.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:retrofit/http.dart';

part 'job_list_data_source.g.dart';

@RestApi(baseUrl: "https://0a20-154-180-84-54.ngrok.io/api/")
abstract class JobListDataSource {
  factory JobListDataSource(Dio dio, {String baseUrl}) = _JobListDataSource;
  @GET("jobs")
  Future<DataModel> getJobsList();

}
