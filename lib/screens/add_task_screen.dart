import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.0,
                  color: Colors.lightGreen),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              cursorColor: Colors.lightGreen,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Add'),
              color: Colors.lightGreen,
            ),
          ],
        ),
      ),
    );
  }
}
