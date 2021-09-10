import 'package:json_annotation/json_annotation.dart';

part 'cities.g.dart';

@JsonSerializable()
class Cities {
  final String country;
  @JsonKey(name: 'name')
  final String city;
  final double lat;
  final double lng;

  Cities(
      {required this.country,
      required this.city,
      required this.lat,
      required this.lng});
  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);
  Map<String, dynamic> toJson() => _$CitiesToJson(this);

  // factory Cities.fromJson(var json) {
  //   //print(json);
  //   return Cities(
  //     country: json['country'] as String,
  //     city: json['name'] as String,
  //     lat: json['lat'].toDouble(),
  //     lng: json['lng'].toDouble(),
  //   );
  // }

  // @override
  // String toString() {
  //   return '{${this.country},${this.city}, ${this.lat} ${this.lng}}';
  // }
}
