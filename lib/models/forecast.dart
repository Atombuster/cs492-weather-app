import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/data_structure/forecast.dart';


Future<List<Forecast>> getForecastsByLocation(double lat, double long) async {
  String forecastUrl = "https://api.weather.gov/points/$lat,$long";
  http.Response forecastResponse = await http.get(Uri.parse(forecastUrl));
  final Map<String, dynamic> forecastJson = jsonDecode(forecastResponse.body);

  http.Response forecastDetailResponse =
      await http.get(Uri.parse(forecastJson["properties"]["forecast"]));
  final Map<String, dynamic> forecastDetailJson =
      jsonDecode(forecastDetailResponse.body);

  List<Forecast> forecasts = [];

  List<dynamic> periods = forecastDetailJson["properties"]["periods"];

  for (int i = 0; i < periods.length; i++) {
    Map<String, dynamic> f = periods[i];
    forecasts.add(Forecast.fromJson(f));
  }

  return forecasts;
}
