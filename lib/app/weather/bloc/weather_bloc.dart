import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/cityLocation.dart';
import '../../data/model/weather.dart';
import '../../data/weatherRepository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(WeatherLoading());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeather) {
      try {
        yield WeatherLoading();
        final Weather weather = await _weatherRepository.fetchWeatherByLocation(
            event.cityLocation.lat, event.cityLocation.lng);
        yield WeatherLoaded(weather: weather);
      } catch (exception) {
        yield WeatherError(errorCode: exception);
      }
    }
  }
}
