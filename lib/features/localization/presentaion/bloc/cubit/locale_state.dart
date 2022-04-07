part of 'locale_cubit.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState.initial() = _Initial;
  factory LocaleState.locale(String locale) = LocaleStateChanged;
}
