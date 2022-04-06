part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
    const factory LoginState.loading() = Loading;
  const factory LoginState.error(final String error) = Error;

    const factory LoginState.login(LoginDataResponse loginDataResponse)= _Login ; 

}
