import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        left: 50.0,
        right: 50.0,
        bottom: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: kTaskTextFieldDecoration,
          ),
          SizedBox(height: 20.0),
          FilledButton(
            style: kFillButtonStyle,
            onPressed: () {},
            child: Text('Add', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
