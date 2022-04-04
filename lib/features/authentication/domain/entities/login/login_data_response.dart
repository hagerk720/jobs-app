import 'package:equatable/equatable.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user_response.dart';

class LoginDataResponse extends Equatable {
  final LoginUserResponse? user;
  final String? token;
  const LoginDataResponse({
    required this.user,
    required this.token,
  });

  @override
  List<Object?> get props => [];
}
