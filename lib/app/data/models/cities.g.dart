// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cities _$CitiesFromJson(Map<String, dynamic> json) {
  return Cities(
    country: json['country'] as String,
    city: json['name'] as String,
    lat: (json['lat'] as num).toDouble(),
    lng: (json['lng'] as num).toDouble(),
  );
}

Map<String, dynamic> _$CitiesToJson(Cities instance) => <String, dynamic>{
      'country': instance.country,
      'name': instance.city,
      'lat': instance.lat,
      'lng': instance.lng,
    };
