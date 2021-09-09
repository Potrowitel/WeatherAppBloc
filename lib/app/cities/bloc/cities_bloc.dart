import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/cities.dart';
import '../../data/citiesRepository.dart';
import 'package:weather_app_bloc/app/cities/bloc/cities_event.dart';
import 'package:weather_app_bloc/app/cities/bloc/cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final CitiesRepository _citiesRepository;
  List<Cities> cities = [];

  CitiesBloc({required CitiesRepository citiesRepository})
      : _citiesRepository = citiesRepository,
        super(CitiesState.loading());

  @override
  Stream<CitiesState> mapEventToState(
    CitiesEvent event,
  ) async* {
    if (event is FetchCitiesEvent) {
      try {
        yield CitiesState.loading();
        final List<Cities> cts = await _citiesRepository.fetchCities();
        cities = cts;
        yield CitiesState.loaded(cts);
      } catch (exception) {
        yield CitiesState.error(exception);
      }
    }
    if (event is FilterCitiesEvent) {
      try {
        yield CitiesState.loading();
        final List<Cities> citiesSeatch =
            _citiesRepository.filterSearchResults(event.quary, this.cities);
        print(citiesSeatch);
        yield CitiesState.loaded(citiesSeatch);
      } catch (exception) {
        yield CitiesState.error(exception);
      }
    }
  }
}
