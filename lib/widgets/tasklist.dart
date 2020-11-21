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
    return ListView(
      children: [
        TaskTile(
          title: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          title: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          title: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
