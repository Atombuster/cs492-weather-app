import 'package:flutter/foundation.dart';
import 'package:weatherapp/models/forecast.dart';
import 'package:weatherapp/widgets/location.dart';


class ForecastProvider extends ChangeNotifier {
  List<Forecast> forecasts = [];
  Forecast? activeForecast;

  void setActiveForecast(Forecast forecast) {
      activeForecast = forecast;
  }

  void getForecasts(Location? location) async {
    if (location != null) {
      List<Forecast> forecasts =
          await getForecastsByLocation(location.latitude, location.longitude);
      forecasts = forecasts;
      activeForecast = forecasts[0];
    }
  }
}
