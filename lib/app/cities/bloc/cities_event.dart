import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';

part 'cities_event.freezed.dart';

@freezed
abstract class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.FetchCities(Cities city) = FetchCitiesEvent;
  const factory CitiesEvent.FilterCities(String quary, List<Cities> cities) =
      FilterCitiesEvent;
}
