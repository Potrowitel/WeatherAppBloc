// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cities_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CitiesEventTearOff {
  const _$CitiesEventTearOff();

  FetchCitiesEvent FetchCities(Cities city) {
    return FetchCitiesEvent(
      city,
    );
  }

  FilterCitiesEvent FilterCities(String quary, List<Cities> cities) {
    return FilterCitiesEvent(
      quary,
      cities,
    );
  }
}

/// @nodoc
const $CitiesEvent = _$CitiesEventTearOff();

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities city) FetchCities,
    required TResult Function(String quary, List<Cities> cities) FilterCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities city)? FetchCities,
    TResult Function(String quary, List<Cities> cities)? FilterCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCitiesEvent value) FetchCities,
    required TResult Function(FilterCitiesEvent value) FilterCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCitiesEvent value)? FetchCities,
    TResult Function(FilterCitiesEvent value)? FilterCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res> implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  final CitiesEvent _value;
  // ignore: unused_field
  final $Res Function(CitiesEvent) _then;
}

/// @nodoc
abstract class $FetchCitiesEventCopyWith<$Res> {
  factory $FetchCitiesEventCopyWith(
          FetchCitiesEvent value, $Res Function(FetchCitiesEvent) then) =
      _$FetchCitiesEventCopyWithImpl<$Res>;
  $Res call({Cities city});
}

/// @nodoc
class _$FetchCitiesEventCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements $FetchCitiesEventCopyWith<$Res> {
  _$FetchCitiesEventCopyWithImpl(
      FetchCitiesEvent _value, $Res Function(FetchCitiesEvent) _then)
      : super(_value, (v) => _then(v as FetchCitiesEvent));

  @override
  FetchCitiesEvent get _value => super._value as FetchCitiesEvent;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(FetchCitiesEvent(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Cities,
    ));
  }
}

/// @nodoc

class _$FetchCitiesEvent implements FetchCitiesEvent {
  const _$FetchCitiesEvent(this.city);

  @override
  final Cities city;

  @override
  String toString() {
    return 'CitiesEvent.FetchCities(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchCitiesEvent &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $FetchCitiesEventCopyWith<FetchCitiesEvent> get copyWith =>
      _$FetchCitiesEventCopyWithImpl<FetchCitiesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities city) FetchCities,
    required TResult Function(String quary, List<Cities> cities) FilterCities,
  }) {
    return FetchCities(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities city)? FetchCities,
    TResult Function(String quary, List<Cities> cities)? FilterCities,
    required TResult orElse(),
  }) {
    if (FetchCities != null) {
      return FetchCities(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCitiesEvent value) FetchCities,
    required TResult Function(FilterCitiesEvent value) FilterCities,
  }) {
    return FetchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCitiesEvent value)? FetchCities,
    TResult Function(FilterCitiesEvent value)? FilterCities,
    required TResult orElse(),
  }) {
    if (FetchCities != null) {
      return FetchCities(this);
    }
    return orElse();
  }
}

abstract class FetchCitiesEvent implements CitiesEvent {
  const factory FetchCitiesEvent(Cities city) = _$FetchCitiesEvent;

  Cities get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchCitiesEventCopyWith<FetchCitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCitiesEventCopyWith<$Res> {
  factory $FilterCitiesEventCopyWith(
          FilterCitiesEvent value, $Res Function(FilterCitiesEvent) then) =
      _$FilterCitiesEventCopyWithImpl<$Res>;
  $Res call({String quary, List<Cities> cities});
}

/// @nodoc
class _$FilterCitiesEventCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements $FilterCitiesEventCopyWith<$Res> {
  _$FilterCitiesEventCopyWithImpl(
      FilterCitiesEvent _value, $Res Function(FilterCitiesEvent) _then)
      : super(_value, (v) => _then(v as FilterCitiesEvent));

  @override
  FilterCitiesEvent get _value => super._value as FilterCitiesEvent;

  @override
  $Res call({
    Object? quary = freezed,
    Object? cities = freezed,
  }) {
    return _then(FilterCitiesEvent(
      quary == freezed
          ? _value.quary
          : quary // ignore: cast_nullable_to_non_nullable
              as String,
      cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Cities>,
    ));
  }
}

/// @nodoc

class _$FilterCitiesEvent implements FilterCitiesEvent {
  const _$FilterCitiesEvent(this.quary, this.cities);

  @override
  final String quary;
  @override
  final List<Cities> cities;

  @override
  String toString() {
    return 'CitiesEvent.FilterCities(quary: $quary, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilterCitiesEvent &&
            (identical(other.quary, quary) ||
                const DeepCollectionEquality().equals(other.quary, quary)) &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quary) ^
      const DeepCollectionEquality().hash(cities);

  @JsonKey(ignore: true)
  @override
  $FilterCitiesEventCopyWith<FilterCitiesEvent> get copyWith =>
      _$FilterCitiesEventCopyWithImpl<FilterCitiesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cities city) FetchCities,
    required TResult Function(String quary, List<Cities> cities) FilterCities,
  }) {
    return FilterCities(quary, cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cities city)? FetchCities,
    TResult Function(String quary, List<Cities> cities)? FilterCities,
    required TResult orElse(),
  }) {
    if (FilterCities != null) {
      return FilterCities(quary, cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCitiesEvent value) FetchCities,
    required TResult Function(FilterCitiesEvent value) FilterCities,
  }) {
    return FilterCities(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCitiesEvent value)? FetchCities,
    TResult Function(FilterCitiesEvent value)? FilterCities,
    required TResult orElse(),
  }) {
    if (FilterCities != null) {
      return FilterCities(this);
    }
    return orElse();
  }
}

abstract class FilterCitiesEvent implements CitiesEvent {
  const factory FilterCitiesEvent(String quary, List<Cities> cities) =
      _$FilterCitiesEvent;

  String get quary => throw _privateConstructorUsedError;
  List<Cities> get cities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCitiesEventCopyWith<FilterCitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
