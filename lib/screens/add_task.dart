import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function handleTask;
  AddTask(this.handleTask);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff737672),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text(
                  'New Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                height: 42.0,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  handleTask(newTaskTitle);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
