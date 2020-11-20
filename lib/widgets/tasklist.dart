import 'package:flutter/material.dart';
import 'package:todooye/widgets/tasktile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(title: 'This is the first task'),
        TaskTile(title: 'This is the second task'),
        TaskTile(title: 'This is the third task'),
        // Text('This is our Item number 1'),
        // Text('This is our Item number 2'),
        // Text('This is our Item number 3'),
      ],
    );
  }
}
