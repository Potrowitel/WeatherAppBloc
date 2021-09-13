import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class WeatherLocation {
  final double lat;
  final double lon;
  final String timezone;
  @JsonKey(name: 'timezone_offset')
  final int timeOffset;
  final Weather current;
  final List<DailyWeather> daily;

  WeatherLocation({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timeOffset,
    required this.current,
    required this.daily,
  });

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherLocationToJson(this);

  String getDayTime() {
    Duration time = _sunSetFun().difference(_sunRiseFun());
    return time.inHours.toString() +
        'h' +
        (time.inMinutes % time.inHours).toString() +
        'm';
  }

  String getCurrentTime(int time) {
    DateTime current = this.current.currentTime;
    current = current.add(Duration(seconds: this.timeOffset, minutes: time));
    print(this.timeOffset);
    print(current);
    String zeroMinute = current.minute < 10 ? '0' : '';
    String zeroHour = current.hour < 10 ? '0' : '';

    String currentTime =
        '${DateFormat('EEE').format(current)}, ${current.day} ${DateFormat('MMM').format(current)}. ${current.year} | $zeroHour${current.hour}:$zeroMinute${current.minute}';

    return currentTime;
  }

  bool isDay() {
    DateTime current = this.current.currentTime;
    current = current.add(Duration(seconds: this.timeOffset));
    if (current.isAfter(_sunRiseFun()) && current.isBefore(_sunSetFun()))
      return true;

    return false;
  }

  String getSunrise() {
    DateTime sunRise = _sunRiseFun();

    sunRise = sunRise.add(Duration(seconds: this.timeOffset));
    return sunRise.hour.toString() + ':' + sunRise.minute.toString();
  }

  String getSunset() {
    DateTime sunSet = _sunSetFun();
    sunSet = sunSet.add(Duration(seconds: this.timeOffset));
    return sunSet.hour.toString() + ':' + sunSet.minute.toString();
  }

  DateTime _sunRiseFun() {
    return DateTime.fromMillisecondsSinceEpoch(this.current.sunrise * 1000,
        isUtc: true);
  }

  DateTime _sunSetFun() {
    return DateTime.fromMillisecondsSinceEpoch(this.current.sunset * 1000,
        isUtc: true);
  }
}

@JsonSerializable()
class Weather {
  final double temp;
  @JsonKey(fromJson: _condition, name: 'weather')
  final Condition condition;
  final int humidity;
  final int pressure;
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  final int sunrise;
  final int sunset;
  @JsonKey(fromJson: _currentDate, name: 'dt')
  final DateTime currentTime;

  Weather({
    required this.temp,
    required this.condition,
    required this.humidity,
    required this.pressure,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
    required this.currentTime,
  });

  static _condition(json) {
    return Condition.fromJson(json[0]);
  }

  static List<DailyWeather> dailyWeatherJson(json) {
    return (json as List<dynamic>)
        .map<DailyWeather>((dailyJson) =>
            DailyWeather.fromJson(dailyJson as Map<String, dynamic>))
        .toList();
  }

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  String getTemp() {
    return this.temp.toInt().toString();
  }

  static DateTime _currentDate(json) {
    return DateTime.now().toUtc();
  }

  String getHumitidy() {
    return this.humidity.toString() + '%';
  }

  String getPressure() {
    return this.pressure.toString() + 'mBar';
  }

  String getWindSpeed() {
    return this.windSpeed.toString() + 'km/h';
  }
}

@JsonSerializable()
class Temp {
  @JsonKey(name: 'max')
  final double tempH;
  @JsonKey(name: 'min')
  final double tempL;

  Temp({
    required this.tempH,
    required this.tempL,
  });

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
  Map<String, dynamic> toJson() => _$TempToJson(this);
}

@JsonSerializable()
class DailyWeather {
  @JsonKey(name: 'dt')
  final int time;
  @JsonKey(fromJson: _temp, name: 'temp')
  final Temp temp;
  @JsonKey(fromJson: _condition, name: 'weather')
  final Condition condition;

  DailyWeather(
      {required this.time, required this.temp, required this.condition});

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$DailyWeatherToJson(this);

  static _condition(json) {
    return Condition.fromJson(json[0]);
  }

  static Temp _temp(Map<String, dynamic> json) {
    return Temp.fromJson(json);
  }

  String getDayName() {
    return DateFormat('EE')
        .format(DateTime.fromMillisecondsSinceEpoch(this.time * 1000));
  }

  String getDate() {
    return DateFormat('d')
        .format(DateTime.fromMillisecondsSinceEpoch(this.time * 1000));
  }

  int getTempH() {
    return this.temp.tempH.toInt();
  }

  int getTempL() {
    return this.temp.tempL.toInt();
  }
}

@JsonSerializable()
class Condition {
  final int id;
  final String main;
  final String description;
  String icon;

  Condition(
      {required this.id,
      required this.main,
      required this.description,
      this.icon = 'assets/images/sunny.png'}) {
    if (this.id == 800) {
      this.icon = 'assets/images/sunny.png';
    }
    if (this.id > 800) {
      this.icon = 'assets/images/_cloudy_2.png';
    }
    if (this.id < 800) {
      this.icon = 'assets/images/_hazy.png';
    }
  }
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}
