// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  LocaleStateChanged locale(String locale) {
    return LocaleStateChanged(
      locale,
    );
  }
}

/// @nodoc
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locale) locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LocaleStateChanged value) locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocaleState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocaleState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locale) locale,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LocaleStateChanged value) locale,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocaleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LocaleStateChangedCopyWith<$Res> {
  factory $LocaleStateChangedCopyWith(
          LocaleStateChanged value, $Res Function(LocaleStateChanged) then) =
      _$LocaleStateChangedCopyWithImpl<$Res>;
  $Res call({String locale});
}

/// @nodoc
class _$LocaleStateChangedCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res>
    implements $LocaleStateChangedCopyWith<$Res> {
  _$LocaleStateChangedCopyWithImpl(
      LocaleStateChanged _value, $Res Function(LocaleStateChanged) _then)
      : super(_value, (v) => _then(v as LocaleStateChanged));

  @override
  LocaleStateChanged get _value => super._value as LocaleStateChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleStateChanged(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleStateChanged
    with DiagnosticableTreeMixin
    implements LocaleStateChanged {
  _$LocaleStateChanged(this.locale);

  @override
  final String locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocaleState.locale(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocaleState.locale'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleStateChanged &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $LocaleStateChangedCopyWith<LocaleStateChanged> get copyWith =>
      _$LocaleStateChangedCopyWithImpl<LocaleStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locale) locale,
  }) {
    return locale(this.locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
  }) {
    return locale?.call(this.locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locale)? locale,
    required TResult orElse(),
  }) {
    if (locale != null) {
      return locale(this.locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LocaleStateChanged value) locale,
  }) {
    return locale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
  }) {
    return locale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LocaleStateChanged value)? locale,
    required TResult orElse(),
  }) {
    if (locale != null) {
      return locale(this);
    }
    return orElse();
  }
}

abstract class LocaleStateChanged implements LocaleState {
  factory LocaleStateChanged(String locale) = _$LocaleStateChanged;

  String get locale;
  @JsonKey(ignore: true)
  $LocaleStateChangedCopyWith<LocaleStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
