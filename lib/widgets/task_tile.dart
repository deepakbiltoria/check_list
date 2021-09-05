import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final int i;
  final String taskTitle;
  final callCheckboxState;

  final isChecked;

  TaskTile({this.i, this.isChecked, this.taskTitle, this.callCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        "${i}" + ".",
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: (isChecked ? TextDecoration.lineThrough : null),
            fontSize: 20.0,
            color: Colors.black54,
            fontWeight: FontWeight.w600),
      ),
      trailing: Checkbox(value: isChecked, onChanged: callCheckboxState),
    );
  }
}
