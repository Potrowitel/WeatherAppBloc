import 'dart:async';

import 'package:weather_app_bloc/app/data/restApi.dart';
import 'package:dio/dio.dart';

class TickFailure implements Exception {}

class Tick {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(minutes: 1), (x) => ticks + x + 1)
        .asBroadcastStream();
  }
}
