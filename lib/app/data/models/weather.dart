import 'package:http/http.dart';
import 'package:intl/intl.dart';

class Weather {
  final String cityName;
  final int temp;
  final String condition;
  final double tempHigh;
  final double tempLow;
  final int humidity;
  final int pressure;
  final double windSpeed;
  final int windDeg;
  final int sunRise;
  final int sunSet;
  final int currentTime;
  final int offset;
  final List<DailyWeather> dailyWeather;

  Weather({
    required this.cityName,
    required this.temp,
    required this.condition,
    required this.tempHigh,
    required this.tempLow,
    required this.humidity,
    required this.pressure,
    required this.windSpeed,
    required this.windDeg,
    required this.sunRise,
    required this.sunSet,
    required this.currentTime,
    required this.offset,
    required this.dailyWeather,
  });

  String getTemp() {
    return this.temp.toString();
  }

  String getSunrise() {
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch(this.sunRise * 1000 - this.offset);
    return time.hour.toString() + ':' + time.minute.toString();
  }

  String getSunset() {
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch(this.sunSet * 1000 - this.offset);
    return time.hour.toString() + ':' + time.minute.toString();
  }

  String getDayTime() {
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch((this.sunSet - sunRise) * 1000);
    return time.hour.toString() + 'h' + time.minute.toString() + 'm';
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
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch(this.currentTime * 1000);
    String zeroMinute = time.minute < 10 ? '0' : '';
    String zeroHour = time.hour < 10 ? '0' : '';

    String currentTime =
        '${DateFormat('EEEE').format(time)}, ${time.day} ${DateFormat('MMM').format(time)}. ${time.year} | $zeroHour${time.hour}:$zeroMinute${time.minute}';

    return currentTime;
  }

  bool isDay() {
    if (this.sunSet - this.currentTime < 0) return false;

    if (this.sunRise - this.currentTime < 0) return true;

    return true;
  }
}

class DailyWeather {
  final int time;
  final int tempH;
  final int tempL;
  final Condition condition;

  DailyWeather(
      {required this.time,
      required this.tempH,
      required this.tempL,
      required this.condition});

  factory DailyWeather.fromJson(var json) {
    return DailyWeather(
      time: json['dt'] as int,
      tempH: json['temp']['max'].toInt(),
      tempL: json['temp']['min'].toInt(),
      condition: Condition(
        id: json['weather'][0]['id'].toInt(),
        main: json['weather'][0]['main'],
        description: json['weather'][0]['description'],
      ),
    );
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
    return this.tempH;
  }

  int getTempL() {
    return this.tempL;
  }
}

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
}
