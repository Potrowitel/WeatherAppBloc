part of 'cities_bloc.dart';

abstract class CitiesState {
  CitiesState();
}

class CitiesInitial extends CitiesState {}

class CitiesLoading extends CitiesState {}

class CitiesLoaded extends CitiesState {}

class CitiesError extends CitiesState {}
