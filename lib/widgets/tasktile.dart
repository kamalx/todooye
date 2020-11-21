import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({
    @required this.title,
    @required this.isChecked,
    @required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        // we have to manage the state of a checkbox
        // unlike what we're used to in the web world
        onChanged: checkboxCallback,
      ),
    );
  }
}
