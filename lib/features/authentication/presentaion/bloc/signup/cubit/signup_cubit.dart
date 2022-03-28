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
  SignupCubit() : super(SignupState.initial());
  Future<void> signupUser(UserSignup userSignUp) async {
    // print(userSignUp.toModel());
    await locator.get<SignupUseCase>().call(userSignUp).then((value) {
      value;
      value?.fold(
        (l) => {},
        (r) => {
          print(r.token),
          print("in cubit" + r.toString()),
          emit(SignupState.signup(r))
        },
      );
    });
  }
}
