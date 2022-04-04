import 'package:equatable/equatable.dart';


class UserSignup extends Equatable {
  final String? name;

  final String? email;

  final String? password;
  // ignore: non_constant_identifier_names
 final String? password_confirmation;
  const UserSignup({
    required this.name,
    required this.email,
    required this.password,
    // ignore: non_constant_identifier_names
    required this.password_confirmation,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
