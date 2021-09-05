import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/data/model/cityLocation.dart';
import '../bloc/weather_bloc.dart';
import '../../data/model/weather.dart';
import '../widgets/everydayWeather.dart';
import '../widgets/weatherElem.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherBloc>(context).add(FetchWeather(
        CityLocation(cityName: 'Bishkek', lat: 42.52, lng: 74.35)));
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    //final mediaWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoading) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state is WeatherLoaded) {
          Weather weather = state.weather;
          return Scaffold(
            body: Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(color: Colors.indigo),
                  Container(
                    height: mediaHeight / 3 * 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0))),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0))),
                                constraints:
                                    BoxConstraints(minWidth: 20, maxWidth: 100),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          child: GridView.count(
                            crossAxisCount: 3,
                            padding: const EdgeInsets.all(20.0),
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            physics: new NeverScrollableScrollPhysics(),
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/sunny.png',
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      weather
                                          .getTemp(), //weather.temp.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Barlow-Light',
                                        fontSize: 70,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      //'\u00B0C',
                                      '',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontFamily: 'Barlow-Medium',
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: const EdgeInsets.only(
                                      top: 22.0, left: 35.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text(
                                            '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
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
                                            '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
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
                                  weather.humidity.toString(),
                                  'assets/images/_humidity.png',
                                ),
                              ),
                              Container(
                                child: WeatherElement(
                                  'Pressure',
                                  weather.pressure.toString(),
                                  'assets/images/_barometer.png',
                                ),
                              ),
                              Container(
                                child: WeatherElement(
                                  'Wind',
                                  weather.windSpeed.toString(),
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
                        Container(
                          // margin: const EdgeInsets.only(left: 20.0),
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(width: 16),
                              EverydayWeather(),
                              EverydayWeather(),
                              EverydayWeather(),
                              EverydayWeather(),
                              EverydayWeather(),
                              EverydayWeather(),
                              EverydayWeather(),
                              SizedBox(width: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}



// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     Key? key,
//     required this.mediaHeight,
//   }) : super(key: key);

//   final double mediaHeight;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.indigo,
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: mediaHeight / 3,
//           ),
//           Expanded(
//               child: Container(
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                           margin: EdgeInsets.all(10.0),
//                           child: Text(
//                             'Sunday, 19 May 2019| 4:30PM',
//                             style: TextStyle(
//                               fontFamily: 'Barlow-Regular',
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         // width: 135,
//                         decoration: BoxDecoration(
//                           color: ThemeColors.locationBackground,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             bottomLeft: Radius.circular(20.0),
//                           ),
//                         ),
//                         child: Row(
//                           children: <Widget>[
//                             SizedBox(
//                               height: 48,
//                               child: GestureDetector(
//                                 onTap: () {
//                                   showModalBottomSheet<void>(
//                                     isScrollControlled: true,
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return Container();
//                                       // return LocationDrowdownList(
//                                       //     refreshData, cities);
//                                     },
//                                   );
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       top: 14.0, left: 10.0),
//                                   child: Text(
//                                     '',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headline1
//                                         ?.copyWith(color: Colors.blue),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Icon(
//                                 Icons.location_on,
//                                 size: 14,
//                                 color: ThemeColors.textColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20.0),
//                       topRight: Radius.circular(20.0),
//                     ),
//                   ),
//                   height: 48,
//                 ),
//                 Container(
//                   height: mediaHeight / 3 * 2 - 168,
//                   child: GridView.count(
//                     crossAxisCount: 3,
//                     padding: const EdgeInsets.all(20.0),
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 5,
//                     physics: new NeverScrollableScrollPhysics(),
//                     children: <Widget>[
//                       Container(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Image.asset(
//                               'assets/images/sunny.png',
//                             ),
//                             Text(
//                               '',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline1
//                                   ?.copyWith(color: Colors.black),
//                             )
//                           ],
//                         ),
//                       ),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.only(left: 20.0),
//                             child: Text(
//                               '',
//                               style: TextStyle(
//                                 fontFamily: 'Barlow-Light',
//                                 fontSize: 70,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.only(top: 20.0),
//                             child: Text(
//                               //'\u00B0C',
//                               '',
//                               style: TextStyle(
//                                 fontSize: 25.0,
//                                 fontFamily: 'Barlow-Medium',
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                           padding: const EdgeInsets.only(
//                               top: 22.0, left: 35.0),
//                           child: Column(
//                             children: <Widget>[
//                               Row(
//                                 children: [
//                                   Text(
//                                     '',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headline1,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         bottom: 4.0),
//                                     child: Icon(
//                                       Icons.arrow_upward,
//                                       size: 12.0,
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 5.0),
//                               Row(
//                                 children: [
//                                   Text(
//                                     '',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headline1,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         bottom: 4.0),
//                                     child: Icon(
//                                       Icons.arrow_downward,
//                                       size: 12.0,
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )),
//                       Container(
//                         child: WeatherElement(
//                           'Humidity',
//                           '',
//                           'assets/images/_humidity.png',
//                         ),
//                       ),
//                       Container(
//                         child: WeatherElement(
//                           'Pressure',
//                           '',
//                           'assets/images/_barometer.png',
//                         ),
//                       ),
//                       Container(
//                         child: WeatherElement(
//                           'Wind',
//                           '',
//                           'assets/images/_wind_1.png',
//                         ),
//                       ),
//                       Container(
//                         child: WeatherElement(
//                           'Sunrise',
//                           '',
//                           'assets/images/_sunrise.png',
//                         ),
//                       ),
//                       Container(
//                         child: WeatherElement(
//                           'Sunset',
//                           '',
//                           'assets/images/_sunset.png',
//                         ),
//                       ),
//                       Container(
//                         child: WeatherElement(
//                           'DayTime',
//                           '',
//                           'assets/images/sand_clock.png',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   //margin: const EdgeInsets.only(left: 20.0),
//                   height: 120,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       SizedBox(width: 16),
//                       EverydayWeather(),
//                       EverydayWeather(),
//                       EverydayWeather(),
//                       EverydayWeather(),
//                       EverydayWeather(),
//                       SizedBox(width: 16),
//                     ],
//                   ),
//                 ),
//                 //  SizedBox(height: 10),
//               ],
//             ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20.0),
//                 topRight: Radius.circular(20.0),
//               ),
//               color: Colors.white,
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }
