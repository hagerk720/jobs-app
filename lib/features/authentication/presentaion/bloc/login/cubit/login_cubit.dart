import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';

import 'package:jobs_tdd/features/authentication/domain/usecases/login/login_usecase.dart';

import '../../../../../../cores/locator.dart';
import '../../../../domain/entities/login/login_data_response.dart';


part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());
  Future<void> loginUser(LoginUser loginUser) async {
    await locator.get<LoginUseCase>().call(loginUser).then((value) {
      value?.fold(
        (l) => {},
        (r) => { emit(LoginState.login(r))},
      );
    });
  }
}
