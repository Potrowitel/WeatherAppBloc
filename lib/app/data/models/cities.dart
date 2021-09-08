class Cities {
  String country;
  String city;
  double lat;
  double lng;

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
      lat: json['lat'].toDouble(),
      lng: json['lng'].toDouble(),
    );
  }

  @override
  String toString() {
    return '{${this.country},${this.city}, ${this.lat} ${this.lng}}';
  }
}
