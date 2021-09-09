import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';

part 'weather_event.freezed.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.FetchWeather(Cities cityLocation) =
      FetchWeatherEvent;
  const factory WeatherEvent.CityClicked(Cities city) = CityClickedEvent;
}
