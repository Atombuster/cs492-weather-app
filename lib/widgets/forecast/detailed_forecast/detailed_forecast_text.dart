import 'package:flutter/material.dart';
import 'package:weatherapp/models/forecast.dart';
import 'package:weatherapp/style.dart';

class DetailedForecastText extends StatelessWidget {
  const DetailedForecastText({
    super.key,
    required this.activeForecast,
  });

  final Forecast activeForecast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            activeForecast.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: reportColor,
                ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                activeForecast.detailedForecast,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.4,
                      color: reportColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
