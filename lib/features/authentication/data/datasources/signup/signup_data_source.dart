import 'package:dio/dio.dart';
import 'package:jobs_tdd/cores/constants/constants.dart';
import 'package:jobs_tdd/features/authentication/data/models/signup/signup_user_model.dart';

import 'package:retrofit/http.dart';
import '../../models/signup/signup_data_response_model.dart';

part 'signup_data_source.g.dart';

@RestApi(baseUrl: baseURL)
abstract class SignupDataSource {
  factory SignupDataSource(Dio dio) = _SignupDataSource;
  
  @POST("register")
  Future<SignupDataResponseModel> signup( @Body() SignupUserModel signupUserModel);
 

}