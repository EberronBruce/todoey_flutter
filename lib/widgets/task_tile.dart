import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged onChange;
  final GestureLongPressCallback longPressCallback;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.onChange,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChange,
      ),
      onLongPress: longPressCallback,
    );
  }
}
