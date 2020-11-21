import 'package:flutter/material.dart';
import 'package:todooye/models/task.dart';
import 'package:todooye/widgets/tasktile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy biscuits'),
    Task(name: 'Buy bread'),
  ]; // Task is a model

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
