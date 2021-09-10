import 'dart:convert';

import 'models/weather.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class WeatherFailure implements Exception {}

class WeatherRepository {
  static String apiKey = '6dc9b1311d72eed48c72de34bba59772';

  Future<Weather> fetchWeatherByLocation(
      double latitude, double longitud) async {
    final url =
        'https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitud&units=metric&exclude=minutely,hourly,alerts&appid=$apiKey';

    final res = await Dio().get(url);

    if (res.statusCode != 200) {
      print('error');
    }
    final weatherJson = res.data;

    final Weather weather = Weather.fromJson(weatherJson['current']).copyWith(
        offset: weatherJson['timezone_offset'],
        dailyWeather: Weather.dailyWeatherJson(weatherJson['daily']));

    // final Weather weather = Weather(
    //   temp: weatherJson['current']['temp'].round(),
    //   humidity: weatherJson['current']['humidity'] as int,
    //   pressure: weatherJson['current']['pressure'] as int,
    //   sunRise: sunRise,
    //   sunSet: sunSet,
    //   windSpeed: weatherJson['current']['wind_speed'].toDouble(),
    //   windDeg: weatherJson['current']['wind_deg'] as int,
    //   currentTime: currentTime,
    //   offset: weatherJson['timezone_offset'] as int,
    //   dailyWeather: dailyWeather,
    // );
    return weather;
  }
}
