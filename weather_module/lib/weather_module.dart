library weather_module;

import 'package:flutter/material.dart';

class WeatherScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Module'),
      ),
      body: Center(
        child: Text('Content of Weather Module'),
      ),
    );
  }
}

