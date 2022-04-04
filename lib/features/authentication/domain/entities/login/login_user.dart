
import 'package:equatable/equatable.dart';

class LoginUser extends Equatable {
 final String? email;
 final String? password;
 const LoginUser({this.email, this.password});

  @override
  List<Object?> get props => throw UnimplementedError();
}
