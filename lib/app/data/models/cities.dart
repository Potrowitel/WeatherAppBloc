class Cities {
  String country;
  String city;
  String lat;
  String lng;

  Cities(
      {required this.country,
      required this.city,
      required this.lat,
      required this.lng});

  factory Cities.fromJson(var json) {
    //print(json);
    return Cities(
        country: json['country'] as String,
        city: json['name'] as String,
        lat: json['lat'] as String,
        lng: json['lng'] as String);
  }

  @override
  String toString() {
    return '{${this.country},${this.city}, ${this.lat} ${this.lng}}';
  }
}
