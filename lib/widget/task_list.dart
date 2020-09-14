import 'package:flutter/material.dart';
import 'package:todo_divakar/widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_divakar/models/task_data.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.task[index];
            return Dismissible(
              child: TaskTile(
                taskTittle: task.name,
                isChecked: task.isDone,
                checkboxCallBack: (checkboxState) {
                  taskData.updateTask(task);
                },
              ),
              background: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    Text(
                      'Move to trash',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              key: UniqueKey(),
              onDismissed: (direction) {
                taskData.deleteTask(task);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Task has been deleted'),
                  duration: Duration(seconds: 1),
                ));
              },
              direction: DismissDirection.endToStart,
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
