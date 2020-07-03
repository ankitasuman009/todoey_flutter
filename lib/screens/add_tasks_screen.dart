import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/tasks_data.dart';

class AddTaskScreen  extends StatelessWidget {

  String newTextTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
              color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText){
                    newTextTitle = newText;
                  },
                ),
                FlatButton(
                  child: Text('ADD',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  textColor: Colors.lightBlueAccent,
                  onPressed: (){
                    Provider.of<TasksData>(context, listen: false).addTask(newTextTitle);
                    Navigator.pop(context);

                  },
                ),

            ],
          ),
      ),
    );
  }
}
