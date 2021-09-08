import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_bloc/app/data/timerRepository.dart';
import '../../cities/bloc/cities_bloc.dart';
import '../../data/citiesRepository.dart';
import '../../data/models/cities.dart';
import '../bloc/weather_bloc.dart';
import '../../data/models/weather.dart';
import '../widgets/everydayWeather.dart';
import '../widgets/weatherElem.dart';
import '../widgets/dropdownList.dart';
import '../../help/ThemeColors.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherBloc>(context).add(FetchWeather(
        Cities(country: 'KG', city: 'Bishkek', lat: 42.87, lng: 74.59)));
  }

  @override
  Widget build(BuildContext ctx) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (ctx, state) {
        if (state is WeatherLoading) {
          return Scaffold(
            body: Container(
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(),
                Container(child: Image.asset('assets/images/graphic.png')),
                Positioned(
                  top: 270,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Center(child: CircularProgressIndicator()),
                    height: mediaHeight / 3 * 2 - 15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0))),
                  ),
                ),
              ]),
            ),
          );
        }
        if (state is WeatherLoaded) {
          Weather weather = state.weather;
          return Scaffold(
            body: Container(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(),
                  Container(
                    child: state.weather.isDay()
                        ? Image.asset('assets/images/graphic.png')
                        : Image.asset('assets/images/graphic_night.png'),
                  ),
                  Positioned(
                    top: 270,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: mediaHeight / 3 * 2 - 15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0))),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(10.0),
                                    child: Text(
                                      state.weather.getCurrentTime(),
                                      // 'Sunday, 19 May 2019| 4:30PM',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(fontSize: 14.0),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 135,
                                  decoration: BoxDecoration(
                                    color: ThemeColors.locationBackground,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 48,
                                        child: GestureDetector(
                                          onTap: () {
                                            TimerRepository t =
                                                new TimerRepository();
                                            print(t.getCurrentTime(
                                                weather.offset));
                                            //CitiesRepository city =
                                            //    new CitiesRepository();
                                            //List<Cities> cities = city.fetchCities();
                                            showModalBottomSheet(
                                              isScrollControlled: true,
                                              context: ctx,
                                              builder: (BuildContext context) {
                                                return BlocProvider<CitiesBloc>(
                                                  create: (context) => CitiesBloc(
                                                      citiesRepository:
                                                          CitiesRepository()),
                                                  child: LocationDrowdownList(
                                                      ctx, state.city),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            constraints: BoxConstraints(
                                              minWidth: 90,
                                              maxWidth: 200,
                                            ),
                                            margin: EdgeInsets.only(
                                                top: 14.0, left: 10.0),
                                            child: Text(
                                              state.city.city +
                                                  ',' +
                                                  state.city.country,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  ?.copyWith(
                                                      color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          size: 14,
                                          color: ThemeColors.textColor,
                                        ),
                                      ),
                                      SizedBox(width: 10.0)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            height: 48,
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 285,
                                child: GridView.count(
                                  crossAxisCount: 3,
                                  padding: const EdgeInsets.all(20.0),
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 1,
                                  physics: new NeverScrollableScrollPhysics(),
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            weather
                                                .dailyWeather[0].condition.icon,
                                            width: 40,
                                          ),
                                          Text(
                                            weather.condition,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(), ////////////////////
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: 22.0, left: 35.0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: [
                                                Text(
                                                  '${weather.dailyWeather[0].tempH}\u00B0C',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 4.0),
                                                  child: Icon(
                                                    Icons.arrow_upward,
                                                    size: 12.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5.0),
                                            Row(
                                              children: [
                                                Text(
                                                  '${weather.dailyWeather[0].tempL}\u00B0C',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 4.0),
                                                  child: Icon(
                                                    Icons.arrow_downward,
                                                    size: 12.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                    Container(
                                      child: WeatherElement(
                                        'Humidity',
                                        weather.getHumitidy(),
                                        'assets/images/_humidity.png',
                                      ),
                                    ),
                                    Container(
                                      child: WeatherElement(
                                        'Pressure',
                                        weather.getPressure(),
                                        'assets/images/_barometer.png',
                                      ),
                                    ),
                                    Container(
                                      child: WeatherElement(
                                        'Wind',
                                        weather.getWindSpeed(),
                                        'assets/images/_wind_1.png',
                                      ),
                                    ),
                                    Container(
                                      child: WeatherElement(
                                        'Sunrise',
                                        weather.getSunrise(),
                                        'assets/images/_sunrise.png',
                                      ),
                                    ),
                                    Container(
                                      child: WeatherElement(
                                        'Sunset',
                                        weather.getSunset(),
                                        'assets/images/_sunset.png',
                                      ),
                                    ),
                                    Container(
                                      child: WeatherElement(
                                        'DayTime',
                                        weather.getDayTime(),
                                        'assets/images/sand_clock.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: mediaWidth / 3 - 20,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(width: 150, height: 150),
                                    Positioned(
                                      top: 15.0,
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          weather.getTemp(),
                                          style: TextStyle(
                                            fontFamily: 'Barlow-Light',
                                            fontSize: 70,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5.0,
                                      right: 5.0,
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          '\u00B0C',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontFamily: 'Barlow-Medium',
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            // margin: const EdgeInsets.only(left: 20.0),
                            height: 120,
                            width: mediaWidth - 35,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.weather.dailyWeather.length - 1,
                              itemBuilder: (context, index) {
                                return EverydayWeather(
                                    dailyWeather:
                                        state.weather.dailyWeather[index + 1]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        if (state is WeatherError) {
          return Scaffold(
            body: Container(
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(),
                Container(child: Image.asset('assets/images/graphic.png')),
                Positioned(
                  top: 270,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Center(
                      child: Text('${state.errorCode}'),
                    ),
                    height: mediaHeight / 3 * 2 - 15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0))),
                  ),
                ),
              ]),
            ),
          );
        }
        return Container();
      },
    );
  }
}
