import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxFunction;
  final void Function() longPressFunction;
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxFunction,
    required this.longPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressFunction,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxFunction,
        ));
  }
}
