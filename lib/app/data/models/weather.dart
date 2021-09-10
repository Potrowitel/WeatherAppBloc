import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

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
  @JsonKey(name: 'timezone_offset', ignore: true)
  int? offset;
  @JsonKey(fromJson: dailyWeatherJson, name: 'daily', ignore: true)
  List<DailyWeather>? dailyWeather;

  Weather(
    this.temp,
    this.condition,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.sunrise,
    this.sunset,
    this.currentTime, [
    this.offset,
    this.dailyWeather,
  ]);

  Weather copyWith({
    double? temp,
    Condition? condition,
    int? humidity,
    int? pressure,
    double? windSpeed,
    int? sunrise,
    int? sunset,
    DateTime? currentTime,
    int? offset,
    List<DailyWeather>? dailyWeather,
  }) {
    return Weather(
      temp ?? this.temp,
      condition ?? this.condition,
      humidity ?? this.humidity,
      pressure ?? this.pressure,
      windSpeed ?? this.windSpeed,
      sunrise ?? this.sunrise,
      sunset ?? this.sunset,
      currentTime ?? this.currentTime,
      offset ?? this.offset,
      dailyWeather ?? this.dailyWeather,
    );
  }

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

  String getSunrise() {
    DateTime sunRise = _sunRiseFun();

    sunRise = sunRise.add(Duration(seconds: this.offset!));
    return sunRise.hour.toString() + ':' + sunRise.minute.toString();
  }

  String getSunset() {
    DateTime sunSet = _sunSetFun();
    sunSet = sunSet.add(Duration(seconds: this.offset!));
    return sunSet.hour.toString() + ':' + sunSet.minute.toString();
  }

  String getDayTime() {
    Duration time = _sunSetFun().difference(_sunRiseFun());
    return time.inHours.toString() +
        'h' +
        (time.inMinutes % time.inHours).toString() +
        'm';
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

  String getCurrentTime() {
    String zeroMinute = this.currentTime.minute < 10 ? '0' : '';
    String zeroHour = this.currentTime.hour < 10 ? '0' : '';

    String currentTime =
        '${DateFormat('EEE').format(this.currentTime)}, ${this.currentTime.day} ${DateFormat('MMM').format(this.currentTime)}. ${this.currentTime.year} | $zeroHour${this.currentTime.hour}:$zeroMinute${this.currentTime.minute}';

    return currentTime;
  }

  bool isDay() {
    if (this.currentTime.isAfter(_sunRiseFun()) &&
        this.currentTime.isBefore(_sunSetFun())) return true;

    return false;
  }

  DateTime _sunRiseFun() {
    return DateTime.fromMillisecondsSinceEpoch(this.sunrise * 1000,
        isUtc: true);
  }

  DateTime _sunSetFun() {
    return DateTime.fromMillisecondsSinceEpoch(this.sunset * 1000, isUtc: true);
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
