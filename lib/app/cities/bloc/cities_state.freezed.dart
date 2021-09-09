// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CitiesStateTearOff {
  const _$CitiesStateTearOff();

  _CitiesLoadingState loading() {
    return const _CitiesLoadingState();
  }

  _CitiesLoadedState loaded(List<Cities> cities) {
    return _CitiesLoadedState(
      cities,
    );
  }

  _CitiesErrorState error(Object errorCode) {
    return _CitiesErrorState(
      errorCode,
    );
  }
}

/// @nodoc
const $CitiesState = _$CitiesStateTearOff();

/// @nodoc
mixin _$CitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cities> cities) loaded,
    required TResult Function(Object errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cities> cities)? loaded,
    TResult Function(Object errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoadingState value) loading,
    required TResult Function(_CitiesLoadedState value) loaded,
    required TResult Function(_CitiesErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoadingState value)? loading,
    TResult Function(_CitiesLoadedState value)? loaded,
    TResult Function(_CitiesErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res> implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  final CitiesState _value;
  // ignore: unused_field
  final $Res Function(CitiesState) _then;
}

/// @nodoc
abstract class _$CitiesLoadingStateCopyWith<$Res> {
  factory _$CitiesLoadingStateCopyWith(
          _CitiesLoadingState value, $Res Function(_CitiesLoadingState) then) =
      __$CitiesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CitiesLoadingStateCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res>
    implements _$CitiesLoadingStateCopyWith<$Res> {
  __$CitiesLoadingStateCopyWithImpl(
      _CitiesLoadingState _value, $Res Function(_CitiesLoadingState) _then)
      : super(_value, (v) => _then(v as _CitiesLoadingState));

  @override
  _CitiesLoadingState get _value => super._value as _CitiesLoadingState;
}

/// @nodoc

class _$_CitiesLoadingState implements _CitiesLoadingState {
  const _$_CitiesLoadingState();

  @override
  String toString() {
    return 'CitiesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CitiesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cities> cities) loaded,
    required TResult Function(Object errorCode) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cities> cities)? loaded,
    TResult Function(Object errorCode)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoadingState value) loading,
    required TResult Function(_CitiesLoadedState value) loaded,
    required TResult Function(_CitiesErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoadingState value)? loading,
    TResult Function(_CitiesLoadedState value)? loaded,
    TResult Function(_CitiesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoadingState implements CitiesState {
  const factory _CitiesLoadingState() = _$_CitiesLoadingState;
}

/// @nodoc
abstract class _$CitiesLoadedStateCopyWith<$Res> {
  factory _$CitiesLoadedStateCopyWith(
          _CitiesLoadedState value, $Res Function(_CitiesLoadedState) then) =
      __$CitiesLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Cities> cities});
}

/// @nodoc
class __$CitiesLoadedStateCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res>
    implements _$CitiesLoadedStateCopyWith<$Res> {
  __$CitiesLoadedStateCopyWithImpl(
      _CitiesLoadedState _value, $Res Function(_CitiesLoadedState) _then)
      : super(_value, (v) => _then(v as _CitiesLoadedState));

  @override
  _CitiesLoadedState get _value => super._value as _CitiesLoadedState;

  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(_CitiesLoadedState(
      cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Cities>,
    ));
  }
}

/// @nodoc

class _$_CitiesLoadedState implements _CitiesLoadedState {
  const _$_CitiesLoadedState(this.cities);

  @override
  final List<Cities> cities;

  @override
  String toString() {
    return 'CitiesState.loaded(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesLoadedState &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cities);

  @JsonKey(ignore: true)
  @override
  _$CitiesLoadedStateCopyWith<_CitiesLoadedState> get copyWith =>
      __$CitiesLoadedStateCopyWithImpl<_CitiesLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cities> cities) loaded,
    required TResult Function(Object errorCode) error,
  }) {
    return loaded(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cities> cities)? loaded,
    TResult Function(Object errorCode)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoadingState value) loading,
    required TResult Function(_CitiesLoadedState value) loaded,
    required TResult Function(_CitiesErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoadingState value)? loading,
    TResult Function(_CitiesLoadedState value)? loaded,
    TResult Function(_CitiesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoadedState implements CitiesState {
  const factory _CitiesLoadedState(List<Cities> cities) = _$_CitiesLoadedState;

  List<Cities> get cities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CitiesLoadedStateCopyWith<_CitiesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CitiesErrorStateCopyWith<$Res> {
  factory _$CitiesErrorStateCopyWith(
          _CitiesErrorState value, $Res Function(_CitiesErrorState) then) =
      __$CitiesErrorStateCopyWithImpl<$Res>;
  $Res call({Object errorCode});
}

/// @nodoc
class __$CitiesErrorStateCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res>
    implements _$CitiesErrorStateCopyWith<$Res> {
  __$CitiesErrorStateCopyWithImpl(
      _CitiesErrorState _value, $Res Function(_CitiesErrorState) _then)
      : super(_value, (v) => _then(v as _CitiesErrorState));

  @override
  _CitiesErrorState get _value => super._value as _CitiesErrorState;

  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_CitiesErrorState(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_CitiesErrorState implements _CitiesErrorState {
  const _$_CitiesErrorState(this.errorCode);

  @override
  final Object errorCode;

  @override
  String toString() {
    return 'CitiesState.error(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesErrorState &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorCode);

  @JsonKey(ignore: true)
  @override
  _$CitiesErrorStateCopyWith<_CitiesErrorState> get copyWith =>
      __$CitiesErrorStateCopyWithImpl<_CitiesErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cities> cities) loaded,
    required TResult Function(Object errorCode) error,
  }) {
    return error(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cities> cities)? loaded,
    TResult Function(Object errorCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoadingState value) loading,
    required TResult Function(_CitiesLoadedState value) loaded,
    required TResult Function(_CitiesErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoadingState value)? loading,
    TResult Function(_CitiesLoadedState value)? loaded,
    TResult Function(_CitiesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CitiesErrorState implements CitiesState {
  const factory _CitiesErrorState(Object errorCode) = _$_CitiesErrorState;

  Object get errorCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CitiesErrorStateCopyWith<_CitiesErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
