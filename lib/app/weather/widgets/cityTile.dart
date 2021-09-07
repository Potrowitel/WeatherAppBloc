import 'package:flutter/material.dart';
import '../../help/ThemeColors.dart';

class CityTile extends StatelessWidget {
  final String city;
  final String country;
  final bool isFocus;

  CityTile(this.city, this.country, this.isFocus);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isFocus ? ThemeColors.locationBackground : Colors.white,
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
      child: Row(
        children: [
          Text(
            city + ',' + country,
            style: Theme.of(context).textTheme.headline1,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
