import 'package:weather_app_bloc/app/data/restApi.dart';
import 'package:weather_app_bloc/app/data/tick.dart';

import 'models/weather.dart';
import 'package:dio/dio.dart';

class WeatherFailure implements Exception {}

class WeatherRepository {
  static String apiKey = '6dc9b1311d72eed48c72de34bba59772';

  Future<WeatherLocation> fetchWeatherByLocation(double lat, double lon) async {
    final dio = Dio();
    final client = RestClient(dio);
    final weatherLocation = await client.getWeather(lat, lon);
    // final time = new TimeRepository()
    //     .getCurrentTime(weatherLocation.current.currentTime);
    return weatherLocation;

    // final url =
    //     'https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitud&units=metric&exclude=minutely,hourly,alerts&appid=$apiKey';

    // final res = await Dio().get(url);

    // if (res.statusCode != 200) {
    //   print('error');
    // }
    // final weatherJson = res.data;

    // final WeatherLocation weatherLocation =
    //     WeatherLocation.fromJson(weatherJson);

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
  }
}
