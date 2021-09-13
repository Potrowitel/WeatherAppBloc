// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'time_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeEventTearOff {
  const _$TimeEventTearOff();

  TimeStart start(int duration) {
    return TimeStart(
      duration,
    );
  }

  TimeTicked timeTicked(int duration) {
    return TimeTicked(
      duration,
    );
  }
}

/// @nodoc
const $TimeEvent = _$TimeEventTearOff();

/// @nodoc
mixin _$TimeEvent {
  int get duration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) start,
    required TResult Function(int duration) timeTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? start,
    TResult Function(int duration)? timeTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeStart value) start,
    required TResult Function(TimeTicked value) timeTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeStart value)? start,
    TResult Function(TimeTicked value)? timeTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeEventCopyWith<TimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeEventCopyWith<$Res> {
  factory $TimeEventCopyWith(TimeEvent value, $Res Function(TimeEvent) then) =
      _$TimeEventCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class _$TimeEventCopyWithImpl<$Res> implements $TimeEventCopyWith<$Res> {
  _$TimeEventCopyWithImpl(this._value, this._then);

  final TimeEvent _value;
  // ignore: unused_field
  final $Res Function(TimeEvent) _then;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $TimeStartCopyWith<$Res> implements $TimeEventCopyWith<$Res> {
  factory $TimeStartCopyWith(TimeStart value, $Res Function(TimeStart) then) =
      _$TimeStartCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$TimeStartCopyWithImpl<$Res> extends _$TimeEventCopyWithImpl<$Res>
    implements $TimeStartCopyWith<$Res> {
  _$TimeStartCopyWithImpl(TimeStart _value, $Res Function(TimeStart) _then)
      : super(_value, (v) => _then(v as TimeStart));

  @override
  TimeStart get _value => super._value as TimeStart;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimeStart(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimeStart implements TimeStart {
  const _$TimeStart(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimeEvent.start(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeStart &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimeStartCopyWith<TimeStart> get copyWith =>
      _$TimeStartCopyWithImpl<TimeStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) start,
    required TResult Function(int duration) timeTicked,
  }) {
    return start(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? start,
    TResult Function(int duration)? timeTicked,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeStart value) start,
    required TResult Function(TimeTicked value) timeTicked,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeStart value)? start,
    TResult Function(TimeTicked value)? timeTicked,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class TimeStart implements TimeEvent {
  const factory TimeStart(int duration) = _$TimeStart;

  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimeStartCopyWith<TimeStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTickedCopyWith<$Res> implements $TimeEventCopyWith<$Res> {
  factory $TimeTickedCopyWith(
          TimeTicked value, $Res Function(TimeTicked) then) =
      _$TimeTickedCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$TimeTickedCopyWithImpl<$Res> extends _$TimeEventCopyWithImpl<$Res>
    implements $TimeTickedCopyWith<$Res> {
  _$TimeTickedCopyWithImpl(TimeTicked _value, $Res Function(TimeTicked) _then)
      : super(_value, (v) => _then(v as TimeTicked));

  @override
  TimeTicked get _value => super._value as TimeTicked;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimeTicked(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimeTicked implements TimeTicked {
  const _$TimeTicked(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimeEvent.timeTicked(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeTicked &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimeTickedCopyWith<TimeTicked> get copyWith =>
      _$TimeTickedCopyWithImpl<TimeTicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) start,
    required TResult Function(int duration) timeTicked,
  }) {
    return timeTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? start,
    TResult Function(int duration)? timeTicked,
    required TResult orElse(),
  }) {
    if (timeTicked != null) {
      return timeTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeStart value) start,
    required TResult Function(TimeTicked value) timeTicked,
  }) {
    return timeTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeStart value)? start,
    TResult Function(TimeTicked value)? timeTicked,
    required TResult orElse(),
  }) {
    if (timeTicked != null) {
      return timeTicked(this);
    }
    return orElse();
  }
}

abstract class TimeTicked implements TimeEvent {
  const factory TimeTicked(int duration) = _$TimeTicked;

  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimeTickedCopyWith<TimeTicked> get copyWith =>
      throw _privateConstructorUsedError;
}
