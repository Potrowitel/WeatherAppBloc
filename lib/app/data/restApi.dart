import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_bloc/app/data/models/weather.dart';

part 'restApi.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET(
      'https://api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&units=metric&exclude=minutely,hourly,alerts&appid=6dc9b1311d72eed48c72de34bba59772')
  Future<WeatherLocation> getWeather(
      @Path('lat') double lat, @Path('lon') double lon);
}
