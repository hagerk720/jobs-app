import 'package:dio/dio.dart';
import 'package:jobs_tdd/features/authentication/data/models/signup/signup_user_model.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_data_response.dart';
import 'package:retrofit/http.dart';
import '../../../domain/entities/signup/signup_user.dart';
import '../../models/signup/signup_data_response_model.dart';

part 'signup_data_source.g.dart';

@RestApi(baseUrl: "https://0a20-154-180-84-54.ngrok.io/api/")
abstract class SignupDataSource {
  factory SignupDataSource(Dio dio, {String baseUrl}) = _SignupDataSource;
  
  @POST("register")
  Future<SignupDataResponseModel> signup( @Body() UserSignup signupUserModel);
 

}