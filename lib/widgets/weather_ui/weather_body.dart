import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/forecast/forecast.dart';
import 'package:weatherapp/widgets/location/set_location/location.dart';

class WeatherAppBody extends StatelessWidget {
  const WeatherAppBody({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
  child: TabBarView(
    controller: _tabController,
    children: [
      ForecastWidget(),
      LocationWidget(),
    ],
  ),
);
  }
}