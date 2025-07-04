import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addTask;
  const AddTaskScreen({super.key, required this.addTask});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? newTaskTitle;

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
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 20.0),
          FilledButton(
            style: kFillButtonStyle,
            onPressed: () {
              if (newTaskTitle != null && newTaskTitle!.isNotEmpty) {
                widget.addTask(newTaskTitle);
              }
            },
            child: Text('Add', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
