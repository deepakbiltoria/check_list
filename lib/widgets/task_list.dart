import 'package:check_list/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(1),
        TaskTile(2),
        TaskTile(3),
        TaskTile(4),
      ],
    );
  }
}
