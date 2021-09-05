import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cities_event.dart';
part 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc() : super(CitiesInitial());

  @override
  Stream<CitiesState> mapEventToState(
    CitiesEvent event,
  ) async* {}
}
