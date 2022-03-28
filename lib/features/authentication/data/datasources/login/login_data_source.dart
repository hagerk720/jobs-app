import 'package:dio/dio.dart';
import 'package:jobs_tdd/features/authentication/data/models/login/login_user_model.dart';
import 'package:jobs_tdd/features/authentication/data/models/signup/signup_user_model.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_data_response.dart';
import 'package:retrofit/http.dart';

import '../../models/login/login_data_response_model.dart';

part 'login_data_source.g.dart';

@RestApi(baseUrl: "https://0a20-154-180-84-54.ngrok.io/api/")
abstract class LoginDataSource {
  factory LoginDataSource(Dio dio, {String baseUrl}) = _LoginDataSource;
  @POST("login")
  Future<LoginDataResponseModel> login( @Body() LoginUser loginUserModel);

}