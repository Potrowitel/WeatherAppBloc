part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends WeatherEvent {
  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final CityLocation cityLocation;

  const FetchWeather(this.cityLocation);

  @override
  List<Object> get props => [cityLocation];
}
