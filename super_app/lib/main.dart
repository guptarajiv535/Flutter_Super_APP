import 'package:flutter/material.dart';
import 'package:task_manager_module/task_manager_module.dart';
import 'package:weather_module/weather_module.dart';
import 'app_routes.dart';
import 'app_strings.dart';
import 'main_screen.dart';

void main() {
  runApp(const SuperApp());
}

class SuperApp extends StatelessWidget {
  const SuperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.superAppTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => MainScreen(),
        AppRoutes.weather: (context) => WeatherScreenView(),
        AppRoutes.taskManager: (context) => TaskManagerScreenView(),
      },
    );
  }
}
