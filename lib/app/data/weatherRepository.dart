import 'dart:convert';

import 'model/weather.dart';
import 'package:http/http.dart' as http;

class WeatherFailure implements Exception {}

class WeatherRepository {
  static String apiKey = '6dc9b1311d72eed48c72de34bba59772';

  Future<Weather> fetchWeatherByLocation(
      double latitude, double longitud) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitud&units=metric&exclude=daily&appid=$apiKey');

    final res = await http.get(url);

    if (res.statusCode != 200) {
      print('error');
    }
    final weatherJson = json.decode(res.body);
    print(weatherJson.toString());
    final Weather weather = Weather(
        cityName: weatherJson['timezone'],
        temp: weatherJson['current']['temp'],
        condition: weatherJson['current']['weather'][0]['main'],
        tempHigh: 43.3,
        tempLow: 23.3,
        humidity: weatherJson['current']['humidity'],
        pressure: weatherJson['current']['pressure'],
        sunRise: weatherJson['current']['sunrise'],
        sunSet: weatherJson['current']['sunset'],
        windSpeed: weatherJson['current']['wind_speed'],
        windDeg: weatherJson['current']['wind_deg'],
        dayTime: weatherJson['current']['dt']);
    //print(weather.dayTime);
    return weather;
  }
}
