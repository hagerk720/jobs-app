import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_user_response_model.g.dart';

@JsonSerializable()
class LoginUserResponseModel extends LoginUserResponse {
  @JsonKey(name: "id")
  final int? idUSer;
  @JsonKey(name: "name")
  final String? nameUSer;
  const LoginUserResponseModel({
    required this.nameUSer,
    required this.idUSer,
  }) : super();
  factory LoginUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserResponseModelToJson(this);
}
