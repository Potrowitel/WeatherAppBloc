import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';

part 'cities_state.freezed.dart';

@freezed
abstract class CitiesState with _$CitiesState {
  const factory CitiesState.loading() = _CitiesLoadingState;
  const factory CitiesState.loaded(List<Cities> cities) = _CitiesLoadedState;
  const factory CitiesState.error(Object errorCode) = _CitiesErrorState;
}
