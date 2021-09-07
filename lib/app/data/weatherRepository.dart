import 'dart:convert';

import 'models/weather.dart';
import 'package:http/http.dart' as http;

class WeatherFailure implements Exception {}

class WeatherRepository {
  static String apiKey = '6dc9b1311d72eed48c72de34bba59772';

  Future<Weather> fetchWeatherByLocation(
      String latitude, String longitud) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitud&units=metric&exclude=minutely,hourly,alerts&appid=$apiKey');

    final res = await http.get(url);
    double windSpeed = 0;
    if (res.statusCode != 200) {
      print('error');
    }
    final weatherJson = json.decode(res.body);
    //  print(weatherJson.toString());
    if (weatherJson['current']['wind_speed'] is int) {
      windSpeed = weatherJson['current']['wind_speed'].toDouble();
    } else {
      windSpeed = weatherJson['current']['wind_speed'];
    }

    List<DailyWeather> dailyWeather = weatherJson['daily']
        .map<DailyWeather>((dailyJson) => DailyWeather.fromJson(dailyJson))
        .toList();

    final Weather weather = Weather(
      cityName: weatherJson['timezone'] as String,
      temp: weatherJson['current']['temp'].round(),
      condition: weatherJson['current']['weather'][0]['main'] as String,
      tempHigh: 43.3 as double,
      tempLow: 23.3 as double,
      humidity: weatherJson['current']['humidity'] as int,
      pressure: weatherJson['current']['pressure'] as int,
      sunRise: weatherJson['current']['sunrise'] as int,
      sunSet: weatherJson['current']['sunset'] as int,
      windSpeed: windSpeed as double,
      windDeg: weatherJson['current']['wind_deg'] as int,
      currentTime: weatherJson['current']['dt'] as int,
      offset: weatherJson['timezone_offset'] as int,
      dailyWeather: dailyWeather,
    );
    return weather;
  }
}
