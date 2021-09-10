// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    (json['temp'] as num).toDouble(),
    Weather._condition(json['weather']),
    json['humidity'] as int,
    json['pressure'] as int,
    (json['wind_speed'] as num).toDouble(),
    json['sunrise'] as int,
    json['sunset'] as int,
    Weather._currentDate(json['dt']),
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