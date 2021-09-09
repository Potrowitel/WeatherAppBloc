import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_event.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_state.dart';

import '../../data/models/cities.dart';
import '../../data/models/weather.dart';
import '../../data/weatherRepository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;
  Cities city = Cities(country: 'KG', city: 'Bishkek', lat: 42.87, lng: 74.59);
  WeatherBloc({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(WeatherState.loading());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeatherEvent) {
      try {
        yield WeatherState.loading();
        final Weather weather = await _weatherRepository.fetchWeatherByLocation(
            event.cityLocation.lat, event.cityLocation.lng);
        //DateTime time = DateTime.now();

        yield WeatherState.loaded(weather, city);
        //  yield TimeStarted(time: time, timeOffset: weather.offset);
      } catch (exception) {
        // print(exception);
        yield WeatherState.error(exception);
      }
    }
    if (event is CityClickedEvent) {
      try {
        yield WeatherState.loading();
        final Weather weather = await _weatherRepository.fetchWeatherByLocation(
            event.city.lat, event.city.lng);
        yield WeatherState.loaded(weather, event.city);
      } catch (exception) {
        print(exception);
        yield WeatherState.error(exception);
      }
    }
  }
}
