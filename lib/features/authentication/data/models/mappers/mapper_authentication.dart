import 'package:jobs_tdd/features/authentication/data/models/login/login_user_model.dart';
import 'package:jobs_tdd/features/authentication/data/models/signup/signup_user_model.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_user.dart';

extension RegistrationMapper on UserSignup {
  SignupUserModel toModel() => SignupUserModel(
        emailUser: email,
        passwordUser: password,
        confirmPassword: password_confirmation,
        nameUser: name,
      );
}

extension LoginMapper on LoginUser {
  LoginUserModel toModel() => LoginUserModel(
        emailUser: email,
        passwordUser: password,
      );
}
