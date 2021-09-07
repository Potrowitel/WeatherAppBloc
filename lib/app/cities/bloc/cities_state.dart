part of 'cities_bloc.dart';

abstract class CitiesState {
  CitiesState();
}

class CitiesInitial extends CitiesState {}

class CitiesLoading extends CitiesState {}

class CitiesLoaded extends CitiesState {
  final List<Cities> cities;

  CitiesLoaded({required this.cities});
}

class CitiesError extends CitiesState {
  final Object errorCode;

  CitiesError(this.errorCode);
}
