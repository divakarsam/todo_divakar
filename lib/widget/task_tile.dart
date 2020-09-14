import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTittle;
  final Function checkboxCallBack;
  final Function longPressCallBack;
  TaskTile(
      {this.isChecked,
      this.taskTittle,
      this.checkboxCallBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          taskTittle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.teal,
          onChanged: checkboxCallBack,
        ));
  }
}
