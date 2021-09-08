import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_bloc.dart';
import '../../cities/bloc/cities_bloc.dart';
import '../widgets/cityTile.dart';
import '../../data/models/cities.dart';
import '../../help/ThemeColors.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationDrowdownList extends StatefulWidget {
  final Cities city;
  final BuildContext context;

  LocationDrowdownList(this.context, this.city);
  @override
  _LocationDrowdownListState createState() => _LocationDrowdownListState();
}

class _LocationDrowdownListState extends State<LocationDrowdownList> {
  TextEditingController editingController = TextEditingController();
  List<Cities> cities = [];

  String alph = '';
  bool alphFlag = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CitiesBloc>(context).add(FetchCities(city: widget.city));
  }

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).padding.top);
    final mediaHeight = MediaQuery.of(context).size.height;
    return Container(
      height: mediaHeight - 100,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: BlocBuilder<CitiesBloc, CitiesState>(builder: (context, state) {
          if (state is CitiesLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is CitiesLoaded) {
            cities = state.cities;
            return Column(
              children: [
                SizedBox(height: 24),
                Text(
                  'Location',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       spreadRadius: 50,
                  //       color: Colors.black,
                  //       blurRadius: 25,
                  //       offset: const Offset(0, 10),
                  //     ),
                  //   ],
                  // ),
                  height: 50,
                  margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        if (cities.isNotEmpty)
                          BlocProvider.of<CitiesBloc>(context)
                              .add(FilterCities(quary: value, cities: cities));
                      });
                    },
                    controller: editingController,
                    decoration: InputDecoration(
                      hintText: '${widget.city.city},${widget.city.country}',
                      filled: true,
                      fillColor: ThemeColors.textFieldBack,
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.location_on),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: mediaHeight -
                      MediaQuery.of(context).viewInsets.bottom -
                      213,
                  child: ListView.builder(
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      alphFlag = false;
                      String firstChar =
                          cities[index].city[0].toUpperCase().toString();
                      if (alph == '') {
                        alphFlag = true;
                        alph = firstChar;
                      }
                      if (alph != firstChar) {
                        alphFlag = true;
                        alph = firstChar;
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          alphFlag
                              ? Container(
                                  margin: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    firstChar,
                                    style: TextStyle(
                                      fontFamily: 'Barlow-Light',
                                      fontSize: 50,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              : Container(),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<WeatherBloc>(widget.context)
                                  .add(CityClicked(city: state.cities[index]));
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: CityTile(
                                state.cities[index].city,
                                state.cities[index].country,
                                widget.city.city == state.cities[index].city
                                    ? true
                                    : false,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return Container();
        }),
      ),
    );
  }
}
