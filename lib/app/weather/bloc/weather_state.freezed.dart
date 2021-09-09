// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherLoadingState loading() {
    return const _WeatherLoadingState();
  }

  _WeatherLoadedState loaded(Weather weather, Cities city) {
    return _WeatherLoadedState(
      weather,
      city,
    );
  }

  _WeatherErrorState error(Object error) {
    return _WeatherErrorState(
      error,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather, Cities city) loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather, Cities city)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherLoadedState value) loaded,
    required TResult Function(_WeatherErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherLoadedState value)? loaded,
    TResult Function(_WeatherErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$WeatherLoadingStateCopyWith<$Res> {
  factory _$WeatherLoadingStateCopyWith(_WeatherLoadingState value,
          $Res Function(_WeatherLoadingState) then) =
      __$WeatherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherLoadingStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherLoadingStateCopyWith<$Res> {
  __$WeatherLoadingStateCopyWithImpl(
      _WeatherLoadingState _value, $Res Function(_WeatherLoadingState) _then)
      : super(_value, (v) => _then(v as _WeatherLoadingState));

  @override
  _WeatherLoadingState get _value => super._value as _WeatherLoadingState;
}

/// @nodoc

class _$_WeatherLoadingState implements _WeatherLoadingState {
  const _$_WeatherLoadingState();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather, Cities city) loaded,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather, Cities city)? loaded,
    TResult Function(Object error)? error,
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
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherLoadedState value) loaded,
    required TResult Function(_WeatherErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherLoadedState value)? loaded,
    TResult Function(_WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadingState implements WeatherState {
  const factory _WeatherLoadingState() = _$_WeatherLoadingState;
}

/// @nodoc
abstract class _$WeatherLoadedStateCopyWith<$Res> {
  factory _$WeatherLoadedStateCopyWith(
          _WeatherLoadedState value, $Res Function(_WeatherLoadedState) then) =
      __$WeatherLoadedStateCopyWithImpl<$Res>;
  $Res call({Weather weather, Cities city});
}

/// @nodoc
class __$WeatherLoadedStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherLoadedStateCopyWith<$Res> {
  __$WeatherLoadedStateCopyWithImpl(
      _WeatherLoadedState _value, $Res Function(_WeatherLoadedState) _then)
      : super(_value, (v) => _then(v as _WeatherLoadedState));

  @override
  _WeatherLoadedState get _value => super._value as _WeatherLoadedState;

  @override
  $Res call({
    Object? weather = freezed,
    Object? city = freezed,
  }) {
    return _then(_WeatherLoadedState(
      weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Cities,
    ));
  }
}

/// @nodoc

class _$_WeatherLoadedState implements _WeatherLoadedState {
  const _$_WeatherLoadedState(this.weather, this.city);

  @override
  final Weather weather;
  @override
  final Cities city;

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherLoadedState &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$WeatherLoadedStateCopyWith<_WeatherLoadedState> get copyWith =>
      __$WeatherLoadedStateCopyWithImpl<_WeatherLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather, Cities city) loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(weather, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather, Cities city)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherLoadedState value) loaded,
    required TResult Function(_WeatherErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherLoadedState value)? loaded,
    TResult Function(_WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadedState implements WeatherState {
  const factory _WeatherLoadedState(Weather weather, Cities city) =
      _$_WeatherLoadedState;

  Weather get weather => throw _privateConstructorUsedError;
  Cities get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherLoadedStateCopyWith<_WeatherLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherErrorStateCopyWith<$Res> {
  factory _$WeatherErrorStateCopyWith(
          _WeatherErrorState value, $Res Function(_WeatherErrorState) then) =
      __$WeatherErrorStateCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class __$WeatherErrorStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherErrorStateCopyWith<$Res> {
  __$WeatherErrorStateCopyWithImpl(
      _WeatherErrorState _value, $Res Function(_WeatherErrorState) _then)
      : super(_value, (v) => _then(v as _WeatherErrorState));

  @override
  _WeatherErrorState get _value => super._value as _WeatherErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_WeatherErrorState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_WeatherErrorState implements _WeatherErrorState {
  const _$_WeatherErrorState(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'WeatherState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$WeatherErrorStateCopyWith<_WeatherErrorState> get copyWith =>
      __$WeatherErrorStateCopyWithImpl<_WeatherErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather, Cities city) loaded,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather, Cities city)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherLoadedState value) loaded,
    required TResult Function(_WeatherErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherLoadedState value)? loaded,
    TResult Function(_WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherErrorState implements WeatherState {
  const factory _WeatherErrorState(Object error) = _$_WeatherErrorState;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherErrorStateCopyWith<_WeatherErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
