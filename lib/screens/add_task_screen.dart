import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

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
                Provider.of<TaskData>(
                  context,
                  listen: false,
                ).addTask(newTaskTitle!);
                Navigator.pop(context);
              }
            },
            child: Text('Add', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
