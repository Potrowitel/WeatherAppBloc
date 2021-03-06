// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restApi.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<WeatherLocation> getWeather(lat, lon) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        WeatherLocation>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&units=metric&exclude=minutely,hourly,alerts&appid=6dc9b1311d72eed48c72de34bba59772',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherLocation.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
