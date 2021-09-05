import 'package:check_list/models/tasks.dart';

class TaskBank {
  List<Tasks> task = [
    Tasks(isChecked: true, taskTitle: 'abc'),
    Tasks(isChecked: false, taskTitle: 'xyz'),
    Tasks(isChecked: true, taskTitle: '123')
  ];

  void setTask(Tasks newTask) {
    task.add(newTask);
  }
}
