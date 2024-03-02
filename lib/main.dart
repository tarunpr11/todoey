import 'package:flutter/material.dart';
import 'screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: Builder(
          builder: (context) {
            return TaskScreen();
          },
        ),
      ),
    );
  }
}
