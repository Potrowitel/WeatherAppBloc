import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/app/data/models/weather.dart';
import 'package:weather_app_bloc/app/time/bloc/time_bloc_barrel.dart';

class DateTimer extends StatefulWidget {
  WeatherLocation weather;
  DateTimer({required this.weather});

  @override
  _DateTimerState createState() => _DateTimerState();
}

class _DateTimerState extends State<DateTimer> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TimeBloc>(context).add(TimeEvent.start(0));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<TimeBloc, TimeState>(
        builder: (context, state) {
          print(state);
          late Widget view;
          state.when(loading: () {
            view = Center(
              child: CircularProgressIndicator(),
            );
          }, started: (duration) {
            view = Text(widget.weather.getCurrentTime(duration));
          });
          return view;
        },
      ),
    );
  }
}
