import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/location/set_location/location_button.dart';

class LocationButtons extends StatelessWidget {
  const LocationButtons(
      {super.key,
      required this.setLocation,
      required this.setLocationFromGps,
      required this.clearLocation});

  final void Function() setLocation;
  final void Function() setLocationFromGps;
  final void Function() clearLocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: LocationButton(
                callbackFunction: setLocation, description: "Set Location")),
        Expanded(
            child: LocationButton(
                callbackFunction: setLocationFromGps, description: "GPS")),
        Expanded(
            child: LocationButton(
                callbackFunction: clearLocation, description: "Clear Location")),
      ],
    );
  }
}
