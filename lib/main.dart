import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/screens/task_screen.dart';
import 'package:todoeyapp/models/tasks_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
