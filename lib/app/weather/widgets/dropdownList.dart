import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/data/models/cities.dart';
import 'package:weather_app_bloc/app/help/ThemeColors.dart';
import 'package:weather_app_bloc/app/cities/bloc/cities_bloc_barrel.dart';
import 'package:weather_app_bloc/app/weather/bloc/weather_bloc_barrel.dart';
import 'package:weather_app_bloc/app/weather/widgets/cityTile.dart';

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
    BlocProvider.of<CitiesBloc>(context)
        .add(CitiesEvent.FetchCities(widget.city));
  }

  @override
  Widget build(BuildContext context) {
    late Widget view;

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
          state.when(loading: () {
            view = Center(child: CircularProgressIndicator());
          }, loaded: (loadedCities) {
            cities = loadedCities;
            view = Column(
              children: [
                SizedBox(height: 24),
                Text(
                  'Location',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        if (cities.isNotEmpty)
                          BlocProvider.of<CitiesBloc>(context)
                              .add(CitiesEvent.FilterCities(value, cities));
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
                                  .add(WeatherEvent.CityClicked(cities[index]));
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: CityTile(
                                cities[index].city,
                                cities[index].country,
                                widget.city.city == cities[index].city
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
          }, error: (error) {
            view = Container();
          });
          return view;
        }),
      ),
    );
  }
}
