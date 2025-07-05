import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  // Corrected field initialization
  final List<Task> _tasks = [
    // Use 'final' if the list instance itself won't be replaced
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task); // Now this adds to the persistent _tasks list
    notifyListeners();
  }

  void updateTask(Task task) {
    // Ensure the task is actually part of the list if you were to search for it.
    // Here, we assume 'task' is an object that is already in _tasks.
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task); // This removes from the persistent _tasks list
    notifyListeners();
  }
}
