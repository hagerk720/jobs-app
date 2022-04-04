

import 'package:equatable/equatable.dart';

class SignupUserResponse  extends Equatable{
final String? name;
final String? email;
final int? id; 
 const SignupUserResponse({
  required  this.name,
  required  this.email,
  required  this.id,
  });

  @override
  List<Object?> get props => throw UnimplementedError();

  
  
}
