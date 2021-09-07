part of 'cities_bloc.dart';

@immutable
abstract class CitiesEvent {
  const CitiesEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends CitiesEvent {
  @override
  List<Object> get props => [];
}

class FetchCities extends CitiesEvent {
  final Cities city;

  const FetchCities({required this.city});

  @override
  List<Object> get props => [city];
}

class FilterCities extends CitiesEvent {
  final String quary;
  final List<Cities> cities;

  const FilterCities({required this.quary, required this.cities});
}
