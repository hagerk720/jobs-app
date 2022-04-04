import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/data/models/signup/signup_user_response_model.dart';
import '../../../domain/entities/signup/signup_data_response.dart';

part 'signup_data_response_model.g.dart';

@JsonSerializable()
class SignupDataResponseModel extends SignupDataResponse {
final SignupUserResponceModel? user;
  final String? token;
   const SignupDataResponseModel(this.user, this.token) : super(user: user , token: token) ;
  factory SignupDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupDataResponseModelFromJson(json);
}
