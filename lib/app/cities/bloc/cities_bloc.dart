import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_bloc/app/data/models/weather.dart';
import '../../data/models/cities.dart';
import '../../data/citiesRepository.dart';

part 'cities_event.dart';
part 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final CitiesRepository _citiesRepository;
  List<Cities> cities = [];

  CitiesBloc({required CitiesRepository citiesRepository})
      : _citiesRepository = citiesRepository,
        super(CitiesLoading());

  @override
  Stream<CitiesState> mapEventToState(
    CitiesEvent event,
  ) async* {
    if (event is FetchCities) {
      try {
        yield CitiesLoading();
        final List<Cities> cts = await _citiesRepository.fetchCities();
        cities = cts;
        yield CitiesLoaded(cities: cts);
      } catch (exception) {
        yield CitiesError(exception);
      }
    }
    if (event is FilterCities) {
      try {
        yield CitiesLoading();
        final List<Cities> citiesSeatch =
            _citiesRepository.filterSearchResults(event.quary, this.cities);
        print(citiesSeatch);
        yield CitiesLoaded(cities: citiesSeatch);
      } catch (exception) {
        yield CitiesError(exception);
      }
    }
  }
}
