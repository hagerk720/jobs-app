import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/signup/signup_data_response.dart';
import '../../../../domain/entities/signup/signup_user.dart';
import '../../../../domain/usecases/signup/signup_usecase.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';
@injectable
class SignupCubit extends Cubit<SignupState> {
  final SignupUseCase signupUseCase; 
  SignupCubit(this.signupUseCase) : super(const SignupState.initial());
  Future<void> signupUser(UserSignup userSignUp) async {
    await signupUseCase.call(userSignUp).then((value) {
      value;
      value?.fold(
        (l) => {},
        (r) => {emit(SignupState.signup(r))},
      );
    });
  }
}
