import 'package:check_list/models/tasks.dart';
import 'package:check_list/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  final List<Tasks> task;

  TaskList(this.task);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: (context, int index) {
        return TaskTile(
            i: index,
            isChecked: widget.task[index].isChecked,
            taskTitle: widget.task[index].taskTitle,
            callCheckboxState: (bool checkboxState) {
              setState(() {
                widget.task[index].isChecked = checkboxState;
              });
            });
      },
    );
  }
}
