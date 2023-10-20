library weather_module;

import 'package:flutter/material.dart';

class WeatherScreenView extends StatelessWidget {
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
            const Text(
              'Sunny with clear skies', // Replace this with actual weather description
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.cloud, size: 30, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  '25°C', // Replace this with actual temperature
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to fetch and display updated weather information
              },
              child: const Text('Refresh Weather'),
            ),
          ],
        ),
      ),
    );
  }
}


