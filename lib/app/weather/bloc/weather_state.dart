import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';
import 'package:weather_app_bloc/app/data/models/weather.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _WeatherLoadingState;
  const factory WeatherState.loaded(Weather weather, Cities city) =
      _WeatherLoadedState;
  const factory WeatherState.error(Object error) = _WeatherErrorState;
}
