part of 'apply_cubit.dart';

@freezed
class ApplyState with _$ApplyState {
  const factory ApplyState.initial() = _Initial;
  const factory ApplyState.apply(String msg) = _Apply;

}
