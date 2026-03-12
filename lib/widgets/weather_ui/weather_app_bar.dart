import 'package:flutter/material.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WeatherAppBar({
    super.key,
    required this.title,
    required TabController tabController,
  }) : _tabController = tabController;

  final String title;
  final TabController _tabController;

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          tooltip: "Settings",
        ),
      ],
      bottom: TabBar(controller: _tabController, tabs: [
        Semantics(
            label: "Forecasts Tab",
            child: Tab(icon: Icon(Icons.sunny_snowing))),
        Semantics(
            label: "Location Tab", child: Tab(icon: Icon(Icons.location_pin))),
      ]),
    );
  }
}
