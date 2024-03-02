import 'package:flutter/material.dart';
import 'package:todoey/taskData.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  late String taskName;
  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            controller: taskController,
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (text) {
              taskName = text;
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskName);
              Navigator.pop(context);
            },
            child: Text(
              'Add task',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
            ),
          )
        ],
      ),
    );
  }
}
