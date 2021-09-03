import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final int i;
  TaskTile(this.i);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  final seqNum = [0, 1, 2, 3, 4, 5];

  bool isChecked = false;

  /*
   void checkboxCallback(bool checkboxState) {
    setState(() {
      this.isChecked = checkboxState;
    });
  }

  */

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        "${seqNum[widget.i]}" + ".",
      ),
      title: Text(
        'This is a Task',
        style: TextStyle(
            decoration: (isChecked ? TextDecoration.lineThrough : null),
            fontSize: 20.0,
            color: Colors.black54,
            fontWeight: FontWeight.w600),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        changeCheckState: (bool checkboxState) {
          setState(() {
            this.isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function changeCheckState;

  TaskCheckbox({@required this.checkboxState, @required this.changeCheckState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: changeCheckState,
    );
  }
}
