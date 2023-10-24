library weather_module;

import 'package:flutter/material.dart';
import 'package:weather_module/services/LocationService.dart';
import 'package:weather_module/services/WeatherService.dart';

class WeatherScreenView extends StatefulWidget {
  @override
  _WeatherScreenViewState createState() => _WeatherScreenViewState();
}

class _WeatherScreenViewState extends State<WeatherScreenView> {
  final WeatherService _weatherService = WeatherService();
  final LocationService _locationService = LocationService();
  String weatherDescription = '';
  String temperature = '';
  String location = '';

  @override
  void initState() {
    super.initState();
    _loadWeatherData();
    _loadLocation();
  }

  Future<void> _loadWeatherData() async {
    // Fetch weather data and temperature
    weatherDescription = await _weatherService.getWeather();
    temperature = await _weatherService.getTemperature();
    setState(() {}); // Update the UI with the fetched data
  }

  Future<void> _loadLocation() async {
    // Fetch current location
    location = await _locationService.getCurrentLocation();
    setState(() {}); // Update the UI with the fetched location
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Module'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Image.asset(
              'assets/weather_icon.png',
              width: 100,
              height: 100,
            ),*/
            const SizedBox(height: 20),
            const Text(
              'Current Weather',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              weatherDescription, // Replace this with actual weather description
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.cloud, size: 30, color: Colors.blue),
                const SizedBox(width: 10),
                Text(
                  temperature,
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadWeatherData,
              child: const Text('Refresh Weather'),
            ),
          ],
        ),
      ),
    );
  }
}


