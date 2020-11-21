import 'package:flutter/material.dart';
import 'package:todooye/models/task.dart';
import 'package:todooye/widgets/tasktile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
      itemBuilder: (context, index) {
        if (widget.tasks != null && widget.tasks.isNotEmpty) {
          return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        } else {
          return Text('! Add some tasks');
        }
      },
      itemCount: widget.tasks.length,
    );
  }
}
