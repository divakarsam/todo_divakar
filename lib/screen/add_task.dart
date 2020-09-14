import 'package:flutter/material.dart';
// import 'package:todo_divakar/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_divakar/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTasktitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTasktitle = newTask;
              },
            ),
            FlatButton(
              child: Text(
                'Add Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTasktitle);
                Navigator.pop(context);
              },
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
