import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/taskData.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.taskList[index].isDone,
              taskTitle: taskData.taskList[index].taskName,
              checkBoxFunction: (value) {
                taskData.updateTask(index);
              },
              longPressFunction: () {
                taskData.deleteTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
