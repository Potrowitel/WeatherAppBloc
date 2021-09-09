import '../data/models/cities.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:async';
//import 'package:http/http.dart' as http;

class CitiesFailure implements Exception {}

class CitiesRepository {
  Future<List<Cities>> fetchCitiesFromJson() async {
    var citiesObjsJson =
        jsonDecode(await rootBundle.loadString('assets/json/cities.json'));

    List<Cities> cities = citiesObjsJson
        .map((citiesJson) => Cities.fromJson(citiesJson))
        .toList();

    //print(cities);
    return cities;
  }

  List<Cities> fetchCities() {
    List<Cities> cities = [];
    cities.add(
        Cities(country: 'Kyrgyzstan', city: 'Bishkek', lat: 42.87, lng: 74.59));
    cities.add(
        Cities(country: 'France', city: 'Paris', lat: 48.85341, lng: 2.34888));
    cities.add(
        Cities(country: 'Italy', city: 'Rome', lat: 41.89193, lng: 12.51133));
    cities.add(
        Cities(country: 'Italy', city: 'Venice', lat: 45.43713, lng: 12.33265));
    cities.add(Cities(
        country: 'Kyrgyzstan', city: 'Osh', lat: 40.52828, lng: 72.7985));
    cities.add(Cities(
        country: 'India', city: 'Mumbai', lat: 19.07283, lng: 72.8826100));
    cities.add(Cities(
        country: 'Brazil',
        city: 'Rio de Janeiro',
        lat: -22.90278,
        lng: -43.2075));
    cities.sort((a, b) => a.city.compareTo(b.city));
    return cities;
  }

  List<Cities> filterSearchResults(String query, List<Cities> list) {
    List<Cities> searchList = list;
    if (query.isNotEmpty) {
      List<Cities> listData = [];

      searchList.forEach((item) {
        if (item.city.toLowerCase().contains(query)) {
          listData.add(item);
        }
        if (item.country.toLowerCase().contains(query)) {
          print(item);
          if (!listData.contains(item)) {
            listData.add(item);
          }
        }
      });
      return listData;
    } else {
      return list;
    }
  }
}
