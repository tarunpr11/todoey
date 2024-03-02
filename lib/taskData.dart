import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [];
  int get taskCount {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void addTask(String taskTitle) {
    final task = Task(taskName: taskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(int index) {
    _taskList[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
