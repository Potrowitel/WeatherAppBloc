part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  final Cities city;

  WeatherLoaded({required this.weather, required this.city});
}

class WeatherError extends WeatherState {
  final Object errorCode;
  WeatherError({required this.errorCode});
}

class TimeStarted extends WeatherState {
  final DateTime time;
  final int timeOffset;

  TimeStarted({required this.time, required this.timeOffset});
}
