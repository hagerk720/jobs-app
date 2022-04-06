import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jobs_tdd/features/authentication/domain/entities/login/login_user.dart';

import 'package:jobs_tdd/features/authentication/domain/usecases/login/login_usecase.dart';

import '../../../../domain/entities/login/login_data_response.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  LoginCubit(this.loginUseCase) : super(const LoginState.initial());
  Future<void> loginUser(LoginUser loginUser) async {
    emit(const LoginState.loading());
    final value = await loginUseCase.call(loginUser);

    emit(
      value!.fold(
        (l) {
          print("errrrrorr $l");
          return const LoginState.error("error in login");
        },
        (r) => LoginState.login(r),
      ),
    );
  }
}
