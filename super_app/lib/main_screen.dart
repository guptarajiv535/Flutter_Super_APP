import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'app_strings.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.superAppHeader),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.weather),
              child: const Text(AppStrings.weatherModule),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.taskManager),
              child: const Text(AppStrings.taskManagerModule),
            ),
          ],
        ),
      ),
    );
  }
}
