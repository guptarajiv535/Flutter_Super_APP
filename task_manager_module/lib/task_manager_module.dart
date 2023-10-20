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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.assignment,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              const Text(
                'My Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TaskCard(taskTitle: 'Task 1', taskDescription: 'Complete assignment by 5 PM'),
              TaskCard(taskTitle: 'Task 2', taskDescription: 'Meeting at 3 PM'),
              // Add more TaskCard widgets as needed
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add logic to add a new task
                },
                child: const Text('Add Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String taskTitle;
  final String taskDescription;

  TaskCard({required this.taskTitle, required this.taskDescription});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(taskTitle, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(taskDescription),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            // Add logic to delete the task
          },
        ),
      ),
    );
  }
}


