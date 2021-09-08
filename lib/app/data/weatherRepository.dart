import 'dart:convert';

import 'models/weather.dart';
import 'package:http/http.dart' as http;

class WeatherFailure implements Exception {}

class WeatherRepository {
  static String apiKey = '6dc9b1311d72eed48c72de34bba59772';

  Future<Weather> fetchWeatherByLocation(
      double latitude, double longitud) async {
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

    DateTime date = DateTime.now().toUtc();
    int dateOffset = weatherJson['timezone_offset'];

    DateTime sunRise = DateTime.fromMillisecondsSinceEpoch(
        weatherJson['current']['sunrise'] * 1000,
        isUtc: true);
    sunRise = sunRise.add(Duration(seconds: dateOffset));
    DateTime sunSet = DateTime.fromMillisecondsSinceEpoch(
        weatherJson['current']['sunset'] * 1000,
        isUtc: true);
    sunSet = sunSet.add(Duration(seconds: dateOffset));
    DateTime currentTime = date.add(Duration(seconds: dateOffset));

    print(DateTime.fromMillisecondsSinceEpoch(
        weatherJson['current']['sunrise'] * 1000));

    final Weather weather = Weather(
      cityName: weatherJson['timezone'] as String,
      temp: weatherJson['current']['temp'].round(),
      condition: weatherJson['current']['weather'][0]['main'] as String,
      humidity: weatherJson['current']['humidity'] as int,
      pressure: weatherJson['current']['pressure'] as int,
      sunRise: sunRise,
      sunSet: sunSet,
      windSpeed: windSpeed as double,
      windDeg: weatherJson['current']['wind_deg'] as int,
      currentTime: currentTime,
      offset: weatherJson['timezone_offset'] as int,
      dailyWeather: dailyWeather,
    );
    return weather;
  }
}
