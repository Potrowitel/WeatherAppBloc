// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherLocation _$WeatherLocationFromJson(Map<String, dynamic> json) {
  return WeatherLocation(
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
    timezone: json['timezone'] as String,
    timeOffset: json['timezone_offset'] as int,
    current: Weather.fromJson(json['current'] as Map<String, dynamic>),
    daily: (json['daily'] as List<dynamic>)
        .map((e) => DailyWeather.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$WeatherLocationToJson(WeatherLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timeOffset,
      'current': instance.current,
      'daily': instance.daily,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    temp: (json['temp'] as num).toDouble(),
    condition: Weather._condition(json['weather']),
    humidity: json['humidity'] as int,
    pressure: json['pressure'] as int,
    windSpeed: (json['wind_speed'] as num).toDouble(),
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    currentTime: Weather._currentDate(json['dt']),
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'temp': instance.temp,
      'weather': instance.condition,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'wind_speed': instance.windSpeed,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'dt': instance.currentTime.toIso8601String(),
    };

Temp _$TempFromJson(Map<String, dynamic> json) {
  return Temp(
    tempH: (json['max'] as num).toDouble(),
    tempL: (json['min'] as num).toDouble(),
  );
}

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'max': instance.tempH,
      'min': instance.tempL,
    };

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return DailyWeather(
    time: json['dt'] as int,
    temp: DailyWeather._temp(json['temp'] as Map<String, dynamic>),
    condition: DailyWeather._condition(json['weather']),
  );
}

Map<String, dynamic> _$DailyWeatherToJson(DailyWeather instance) =>
    <String, dynamic>{
      'dt': instance.time,
      'temp': instance.temp,
      'weather': instance.condition,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition(
    id: json['id'] as int,
    main: json['main'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
