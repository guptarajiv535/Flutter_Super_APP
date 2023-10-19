library task_manager_module;

import 'package:flutter/material.dart';

class TaskManagerScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager Module'),
      ),
      body: Center(
        child: Text('Content of Task Manager Module'),
      ),
    );
  }
}

