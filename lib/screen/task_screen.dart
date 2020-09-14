import 'package:flutter/material.dart';
import 'package:todo_divakar/widget/task_list.dart';
import 'package:todo_divakar/screen/add_task.dart';
import 'package:provider/provider.dart';
import 'package:todo_divakar/models/task_data.dart';

class TaskScreen extends StatelessWidget {
  static String id = '/TaskScreen';
  // Widget buildButtomsheet(context) => AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff38baa4),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(),
                      ),
                    ));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'You have ${Provider.of<TaskData>(context).taskCount} remaining \ntasks!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskLists(),
            ),
          )
        ],
      ),
    );
  }
}
