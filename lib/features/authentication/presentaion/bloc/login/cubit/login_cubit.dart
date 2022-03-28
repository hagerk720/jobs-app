import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_data_response.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/signup/signup_user.dart';
import 'package:jobs_tdd/features/authentication/domain/usecases/login/login_usecase.dart';

import '../../../../../../cores/locator.dart';
import '../../../../domain/entities/login/login_data_response.dart';


part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());
  Future<void> loginUser(LoginUser loginUser) async {
    print(loginUser.toString());
    await locator.get<LoginUseCase>().call(loginUser).then((value) {
      value?.fold(
        (l) => {},
        (r) => {print("in cubit" + r.toString()), emit(LoginState.login(r))},
      );
    });
  }
}
