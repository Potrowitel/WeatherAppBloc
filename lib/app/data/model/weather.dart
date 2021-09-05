class Weather {
  final String cityName;
  final double temp;
  final String condition;
  final double tempHigh;
  final double tempLow;
  final int humidity;
  final int pressure;
  final double windSpeed;
  final int windDeg;
  final int sunRise;
  final int sunSet;
  final int dayTime;

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
    required this.dayTime,
  });

  String getTemp() {
    print(this.temp);
    return '3';
  }

  String getSunrise() {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(this.sunRise * 1000);
    print(time);
    return time.hour.toString() + ':' + time.minute.toString();
  }

  String getSunset() {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(this.sunSet * 1000);
    print(time);
    return time.hour.toString() + ':' + time.minute.toString();
  }

  String getDayTime() {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(this.dayTime * 1000);
    print(time);
    return time.hour.toString() + 'h' + time.minute.toString() + 'm';
  }
}
