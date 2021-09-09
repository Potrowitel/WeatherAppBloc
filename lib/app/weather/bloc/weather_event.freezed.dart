// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  FetchWeatherEvent FetchWeather(Cities cityLocation) {
    return FetchWeatherEvent(
      cityLocation,
    );
  }

  CityClickedEvent CityClicked(Cities city) {
    return CityClickedEvent(
      city,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities cityLocation) FetchWeather,
    required TResult Function(Cities city) CityClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities cityLocation)? FetchWeather,
    TResult Function(Cities city)? CityClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeatherEvent value) FetchWeather,
    required TResult Function(CityClickedEvent value) CityClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeatherEvent value)? FetchWeather,
    TResult Function(CityClickedEvent value)? CityClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class $FetchWeatherEventCopyWith<$Res> {
  factory $FetchWeatherEventCopyWith(
          FetchWeatherEvent value, $Res Function(FetchWeatherEvent) then) =
      _$FetchWeatherEventCopyWithImpl<$Res>;
  $Res call({Cities cityLocation});
}

/// @nodoc
class _$FetchWeatherEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $FetchWeatherEventCopyWith<$Res> {
  _$FetchWeatherEventCopyWithImpl(
      FetchWeatherEvent _value, $Res Function(FetchWeatherEvent) _then)
      : super(_value, (v) => _then(v as FetchWeatherEvent));

  @override
  FetchWeatherEvent get _value => super._value as FetchWeatherEvent;

  @override
  $Res call({
    Object? cityLocation = freezed,
  }) {
    return _then(FetchWeatherEvent(
      cityLocation == freezed
          ? _value.cityLocation
          : cityLocation // ignore: cast_nullable_to_non_nullable
              as Cities,
    ));
  }
}

/// @nodoc

class _$FetchWeatherEvent implements FetchWeatherEvent {
  const _$FetchWeatherEvent(this.cityLocation);

  @override
  final Cities cityLocation;

  @override
  String toString() {
    return 'WeatherEvent.FetchWeather(cityLocation: $cityLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchWeatherEvent &&
            (identical(other.cityLocation, cityLocation) ||
                const DeepCollectionEquality()
                    .equals(other.cityLocation, cityLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityLocation);

  @JsonKey(ignore: true)
  @override
  $FetchWeatherEventCopyWith<FetchWeatherEvent> get copyWith =>
      _$FetchWeatherEventCopyWithImpl<FetchWeatherEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities cityLocation) FetchWeather,
    required TResult Function(Cities city) CityClicked,
  }) {
    return FetchWeather(cityLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities cityLocation)? FetchWeather,
    TResult Function(Cities city)? CityClicked,
    required TResult orElse(),
  }) {
    if (FetchWeather != null) {
      return FetchWeather(cityLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeatherEvent value) FetchWeather,
    required TResult Function(CityClickedEvent value) CityClicked,
  }) {
    return FetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeatherEvent value)? FetchWeather,
    TResult Function(CityClickedEvent value)? CityClicked,
    required TResult orElse(),
  }) {
    if (FetchWeather != null) {
      return FetchWeather(this);
    }
    return orElse();
  }
}

abstract class FetchWeatherEvent implements WeatherEvent {
  const factory FetchWeatherEvent(Cities cityLocation) = _$FetchWeatherEvent;

  Cities get cityLocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeatherEventCopyWith<FetchWeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityClickedEventCopyWith<$Res> {
  factory $CityClickedEventCopyWith(
          CityClickedEvent value, $Res Function(CityClickedEvent) then) =
      _$CityClickedEventCopyWithImpl<$Res>;
  $Res call({Cities city});
}

/// @nodoc
class _$CityClickedEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $CityClickedEventCopyWith<$Res> {
  _$CityClickedEventCopyWithImpl(
      CityClickedEvent _value, $Res Function(CityClickedEvent) _then)
      : super(_value, (v) => _then(v as CityClickedEvent));

  @override
  CityClickedEvent get _value => super._value as CityClickedEvent;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(CityClickedEvent(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Cities,
    ));
  }
}

/// @nodoc

class _$CityClickedEvent implements CityClickedEvent {
  const _$CityClickedEvent(this.city);

  @override
  final Cities city;

  @override
  String toString() {
    return 'WeatherEvent.CityClicked(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityClickedEvent &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $CityClickedEventCopyWith<CityClickedEvent> get copyWith =>
      _$CityClickedEventCopyWithImpl<CityClickedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities cityLocation) FetchWeather,
    required TResult Function(Cities city) CityClicked,
  }) {
    return CityClicked(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities cityLocation)? FetchWeather,
    TResult Function(Cities city)? CityClicked,
    required TResult orElse(),
  }) {
    if (CityClicked != null) {
      return CityClicked(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeatherEvent value) FetchWeather,
    required TResult Function(CityClickedEvent value) CityClicked,
  }) {
    return CityClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeatherEvent value)? FetchWeather,
    TResult Function(CityClickedEvent value)? CityClicked,
    required TResult orElse(),
  }) {
    if (CityClicked != null) {
      return CityClicked(this);
    }
    return orElse();
  }
}

abstract class CityClickedEvent implements WeatherEvent {
  const factory CityClickedEvent(Cities city) = _$CityClickedEvent;

  Cities get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityClickedEventCopyWith<CityClickedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
