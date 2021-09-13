// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeStateTearOff {
  const _$TimeStateTearOff();

  TimeLoadingState loading() {
    return const TimeLoadingState();
  }

  TimeStartedState started(int duration) {
    return TimeStartedState(
      duration,
    );
  }
}

/// @nodoc
const $TimeState = _$TimeStateTearOff();

/// @nodoc
mixin _$TimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int duration) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int duration)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeLoadingState value) loading,
    required TResult Function(TimeStartedState value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeLoadingState value)? loading,
    TResult Function(TimeStartedState value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeStateCopyWith<$Res> {
  factory $TimeStateCopyWith(TimeState value, $Res Function(TimeState) then) =
      _$TimeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeStateCopyWithImpl<$Res> implements $TimeStateCopyWith<$Res> {
  _$TimeStateCopyWithImpl(this._value, this._then);

  final TimeState _value;
  // ignore: unused_field
  final $Res Function(TimeState) _then;
}

/// @nodoc
abstract class $TimeLoadingStateCopyWith<$Res> {
  factory $TimeLoadingStateCopyWith(
          TimeLoadingState value, $Res Function(TimeLoadingState) then) =
      _$TimeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeLoadingStateCopyWithImpl<$Res> extends _$TimeStateCopyWithImpl<$Res>
    implements $TimeLoadingStateCopyWith<$Res> {
  _$TimeLoadingStateCopyWithImpl(
      TimeLoadingState _value, $Res Function(TimeLoadingState) _then)
      : super(_value, (v) => _then(v as TimeLoadingState));

  @override
  TimeLoadingState get _value => super._value as TimeLoadingState;
}

/// @nodoc

class _$TimeLoadingState implements TimeLoadingState {
  const _$TimeLoadingState();

  @override
  String toString() {
    return 'TimeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int duration) started,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int duration)? started,
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
    required TResult Function(TimeLoadingState value) loading,
    required TResult Function(TimeStartedState value) started,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeLoadingState value)? loading,
    TResult Function(TimeStartedState value)? started,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TimeLoadingState implements TimeState {
  const factory TimeLoadingState() = _$TimeLoadingState;
}

/// @nodoc
abstract class $TimeStartedStateCopyWith<$Res> {
  factory $TimeStartedStateCopyWith(
          TimeStartedState value, $Res Function(TimeStartedState) then) =
      _$TimeStartedStateCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class _$TimeStartedStateCopyWithImpl<$Res> extends _$TimeStateCopyWithImpl<$Res>
    implements $TimeStartedStateCopyWith<$Res> {
  _$TimeStartedStateCopyWithImpl(
      TimeStartedState _value, $Res Function(TimeStartedState) _then)
      : super(_value, (v) => _then(v as TimeStartedState));

  @override
  TimeStartedState get _value => super._value as TimeStartedState;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimeStartedState(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimeStartedState implements TimeStartedState {
  const _$TimeStartedState(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimeState.started(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeStartedState &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimeStartedStateCopyWith<TimeStartedState> get copyWith =>
      _$TimeStartedStateCopyWithImpl<TimeStartedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int duration) started,
  }) {
    return started(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int duration)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeLoadingState value) loading,
    required TResult Function(TimeStartedState value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeLoadingState value)? loading,
    TResult Function(TimeStartedState value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TimeStartedState implements TimeState {
  const factory TimeStartedState(int duration) = _$TimeStartedState;

  int get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeStartedStateCopyWith<TimeStartedState> get copyWith =>
      throw _privateConstructorUsedError;
}
