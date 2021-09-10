import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_bloc/app/data/models/weather.dart';

part 'restApi.g.dart';

@RestApi(
    baseUrl:
        'https://api.openweathermap.org/data/2.5/onecall?lat=45.3&lon=34.4&units=metric&exclude=minutely,hourly,alerts&appid=6dc9b1311d72eed48c72de34bba59772')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET('')
  Future<Weather> getWeather();
}
