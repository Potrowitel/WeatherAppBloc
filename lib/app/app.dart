import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/data/weatherRepository.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_bloc.dart';
import 'weather/view/weatherPage.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Barlow-Light',
                fontSize: 16.0,
                fontWeight: FontWeight.w300),
            headline2: TextStyle(
                fontFamily: 'Barlow-Regular',
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            headline3: TextStyle(
                fontFamily: 'Barlow-Medium',
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          )),
      home: BlocProvider<WeatherBloc>(
        create: (context) =>
            WeatherBloc(weatherRepository: WeatherRepository()),
        child: WeatherPage(),
      ),
    );
  }
}
