import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';
import 'package:weather_app_bloc/app/time/bloc/time_bloc.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_bloc_barrel.dart';
import 'package:weather_app_bloc/app/weather/widgets/picture.dart';
import 'package:weather_app_bloc/app/weather/widgets/weatherInfo.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.FetchWeather(
        Cities(country: 'KG', city: 'Bishkek', lat: 42.87, lng: 74.59)));
  }

  @override
  Widget build(BuildContext ctx) {
    final mediaHeight = MediaQuery.of(context).size.height;
    late Widget view;

    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(),
            Container(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  late Widget viewPicture;
                  state.when(
                      loading: () {
                        viewPicture = Picture();
                      },
                      loaded: (weather, city) {
                        viewPicture = Picture();
                      },
                      error: (error) {});
                  return viewPicture;
                },
              ),
            ),
            Positioned(
              top: 270,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (ctx, state) {
                    state.when(loading: () {
                      view = Center(child: CircularProgressIndicator());
                    }, loaded: (weather, city) {
                      view =
                          WeatherInfo(ctx: ctx, city: city, weather: weather);
                    }, error: (error) {
                      view = Center(
                        child: Text('$error'),
                      );
                    });
                    return view;
                  },
                ),
                height: mediaHeight / 3 * 2 - 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
