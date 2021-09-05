import 'package:check_list/widgets/task_list.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddTaskScreen()));
                });
          },
          child: Icon(
            Icons.add,
            size: 50.0,
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 20.0, top: 60.0, right: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: Icon(Icons.list,
                            color: Colors.lightGreen, size: 50.0)),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '<CheckList>',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      '12 Tasks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: TaskList(),
                ),
              ),
            ],
          ),
        ));
  }
}

/*



       */
