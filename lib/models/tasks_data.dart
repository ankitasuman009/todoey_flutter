import 'package:flutter/foundation.dart';
import 'package:todoeyapp/models/tasks.dart';
import 'dart:collection';


class TasksData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Daily Digest' ),
    Task(name: 'Check insta' ),
    Task(name: 'Check twitter' ),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }


  int get count{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}