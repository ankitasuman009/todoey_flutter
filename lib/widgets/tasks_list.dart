import 'package:todoeyapp/widgets/tasks_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallBack: (checkboxState) {
                  taskData.updateTask(task);
                },
            longPressCallBack: (){
               taskData.deleteTask(task);
            },);
          },
          itemCount: taskData.count,
        );
      },
    );
  }
}
