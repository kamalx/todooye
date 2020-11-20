import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  TaskTile({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: false,
        onChanged: (v) {},
      ),
    );
  }
}
