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
  final Cities cityLocation;

  const FetchWeather(this.cityLocation);

  @override
  List<Object> get props => [cityLocation];
}

class CityClicked extends WeatherEvent {
  final Cities city;
  const CityClicked({required this.city});

  @override
  List<Object> get props => [city];
}

// class TimeStart extends WeatherEvent {
//   final DateTime time;
//   final int timeOffset;

//   const TimeStart({required this.time, required this.timeOffset});

//   @override
//   List<Object> get props => [time, timeOffset];
// }
