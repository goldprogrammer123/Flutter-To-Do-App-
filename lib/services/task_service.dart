import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TaskService {
  static const String _tasksKey = 'tasks_list';

  // Load all tasks from local storage
  Future<List<Task>> loadTasks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? tasksJson = prefs.getString(_tasksKey);

      if (tasksJson == null || tasksJson.isEmpty) {
        return [];
      }

      final List<dynamic> tasksList = json.decode(tasksJson);
      return tasksList.map((taskMap) => Task.fromMap(taskMap)).toList();
    } catch (e) {
      // If there's an error loading, return empty list
      return [];
    }
  }

  // Save all tasks to local storage
  Future<bool> saveTasks(List<Task> tasks) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String tasksJson =
          json.encode(tasks.map((task) => task.toMap()).toList());
      return await prefs.setString(_tasksKey, tasksJson);
    } catch (e) {
      return false;
    }
  }

  // Clear all tasks from local storage
  Future<bool> clearAllTasks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.remove(_tasksKey);
    } catch (e) {
      return false;
    }
  }
}