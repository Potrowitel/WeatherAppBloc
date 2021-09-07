import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/cities.dart';
import '../../data/models/weather.dart';
import '../../data/weatherRepository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;
  Cities city =
      Cities(country: 'KG', city: 'Bishkek', lat: '42.87', lng: '74.59');
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
        //DateTime time = DateTime.now();

        yield WeatherLoaded(weather: weather, city: city);
        //  yield TimeStarted(time: time, timeOffset: weather.offset);
      } catch (exception) {
        // print(exception);
        yield WeatherError(errorCode: exception);
      }
    }
    if (event is CityClicked) {
      try {
        yield WeatherLoading();
        final Weather weather = await _weatherRepository.fetchWeatherByLocation(
            event.city.lat, event.city.lng);
        yield WeatherLoaded(weather: weather, city: event.city);
      } catch (exception) {
        print(exception);
        yield WeatherError(errorCode: exception);
      }
    }
  }
}
