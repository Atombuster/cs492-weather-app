
class Forecast {
  int temperature;
  String windSpeed;
  String windDirection;
  String name;
  String shortForecast;
  String detailedForecast;
  bool isDaytime;
  String imagePath;

  Forecast(
      {required this.temperature,
      required this.windSpeed,
      required this.windDirection,
      required this.name,
      required this.shortForecast,
      required this.detailedForecast,
      required this.isDaytime,
      required this.imagePath});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
        temperature: json["temperature"],
        windSpeed: json['windSpeed'],
        windDirection: json["windDirection"],
        name: json["name"],
        shortForecast: json["shortForecast"],
        detailedForecast: json["detailedForecast"],
        isDaytime: json["isDaytime"],
        imagePath:
            getAssetFromDescription(json["shortForecast"], json["isDaytime"]));
  }
}


String getAssetFromDescription(String description, bool isDaytime){
  if (description.toLowerCase().contains("sunny") || description.toLowerCase().contains("clear")){
    if (isDaytime){
      return "assets/icons/clear_day.svg";
    } else {
      return "assets/icons/clear_night.svg";
    }
  }
  if (description.toLowerCase().contains("cloudy")) {
    if (isDaytime) {
      return "assets/icons/partly_cloudy_day.svg";
    } else {
      return "assets/icons/partly_cloudy_night.svg";
    }
  }
  if (description.toLowerCase().contains("snow")) {
    if (isDaytime) {
      return "assets/icons/cloudy_with_snow_light.svg";
    } else {
      return "assets/icons/cloudy_with_snow_dark.svg";
    }
  }
  if (description.toLowerCase().contains("thunder")){
    if (isDaytime) {
      return "assets/icons/strong_thunderstorms.svg";
    } else {
      return "assets/icons/strong_thunderstorms.svg";
    }
  }
  if (description.toLowerCase().contains("rain") || description.toLowerCase().contains("drizzle") || description.toLowerCase().contains("showers")) {
    if (isDaytime) {
      return "assets/icons/showers_rain.svg";
    } else {
      return "assets/icons/showers_rain.svg";
    }
  }
  if (description.toLowerCase().contains("dust")) {
    if (isDaytime) {
      return "assets/icons/haze_fog_dust_smoke.svg";
    } else {
      return "assets/icons/haze_fog_dust_smoke.svg";
    }
  }
  if (description.toLowerCase().contains("smoke")) {
    if (isDaytime) {
      return "assets/icons/haze_fog_dust_smoke.svg";
    } else {
      return "assets/icons/haze_fog_dust_smoke.svg";
    }
  }
  if (description.toLowerCase().contains("fog")) {
    if (isDaytime) {
      return "assets/icons/haze_fog_dust_smoke.svg";
    } else {
      return "assets/icons/haze_fog_dust_smoke.svg";
    }
  }
  if (description.toLowerCase().contains("sleet")) {
    if (isDaytime) {
      return "assets/icons/mixed_rain_hail_sleet.svg";
    } else {
      return "assets/icons/mixed_rain_hail_sleet.svg";
    }
  }

  return "assets/icons/tornado.svg";
}