import 'package:dio/dio.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';
import 'package:jobs_tdd/features/authentication/data/models/login/login_user_model.dart';
import 'package:retrofit/http.dart';

import '../../models/login/login_data_response_model.dart';

part 'login_data_source.g.dart';

@RestApi(baseUrl: baseURL)
abstract class LoginDataSource {
  factory LoginDataSource(Dio dio) = _LoginDataSource;
  @POST("login")
  Future<LoginDataResponseModel> login( @Body() LoginUserModel loginUserModel);

}