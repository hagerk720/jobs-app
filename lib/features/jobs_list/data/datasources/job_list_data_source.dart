import 'package:dio/dio.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/data_model.dart';
import 'package:retrofit/http.dart';

part 'job_list_data_source.g.dart';

@RestApi(baseUrl: baseURL)
abstract class JobListDataSource {
  factory JobListDataSource(Dio dio) = _JobListDataSource;
  @GET("jobs")
  Future<DataModel> getJobsList();

}
