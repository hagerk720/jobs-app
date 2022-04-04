import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/cores/locator.dart';

import '../../../../domain/entities/signup/signup_data_response.dart';
import '../../../../domain/entities/signup/signup_user.dart';
import '../../../../domain/usecases/signup/signup_usecase.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(const SignupState.initial());
  Future<void> signupUser(UserSignup userSignUp) async {
    await locator.get<SignupUseCase>().call(userSignUp).then((value) {
      value;
      value?.fold(
        (l) => {},
        (r) => {
          emit(SignupState.signup(r))
        },
      );
    });
  }
}
