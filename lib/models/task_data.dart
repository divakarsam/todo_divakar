import 'package:flutter/foundation.dart';
import 'package:todo_divakar/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTaskTitle) {
    final titletask = Task(name: newTaskTitle);
    _task.add(titletask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
