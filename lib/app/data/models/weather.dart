import 'package:intl/intl.dart';

class Weather {
  final String cityName;
  final int temp;
  final String condition;
  final int humidity;
  final int pressure;
  final double windSpeed;
  final int windDeg;
  final DateTime sunRise;
  final DateTime sunSet;
  final DateTime currentTime;
  final int offset;
  final List<DailyWeather> dailyWeather;

  Weather({
    required this.cityName,
    required this.temp,
    required this.condition,
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
    return this.sunRise.hour.toString() + ':' + this.sunRise.minute.toString();
  }

  String getSunset() {
    return this.sunSet.hour.toString() + ':' + this.sunSet.minute.toString();
  }

  String getDayTime() {
    Duration time = this.sunSet.difference(this.sunRise);
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
    if (this.currentTime.isAfter(this.sunRise) &&
        this.currentTime.isBefore(this.sunSet)) return true;

    return false;
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
