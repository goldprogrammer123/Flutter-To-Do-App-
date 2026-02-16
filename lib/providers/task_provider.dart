import 'package:flutter/foundation.dart';
import '../models/task.dart';
import '../services/task_service.dart';

class TaskProvider extends ChangeNotifier {
  final TaskService _taskService = TaskService();
  List<Task> _tasks = [];
  bool _isLoading = false;

  List<Task> get tasks => _tasks;
  bool get isLoading => _isLoading;

  int get totalTasks => _tasks.length;
  int get completedTasks => _tasks.where((t) => t.isCompleted).length;
  int get pendingTasks => _tasks.where((t) => !t.isCompleted).length;

  // Load tasks from persistent storage
  Future<void> loadTasks() async {
    _isLoading = true;
    notifyListeners();

    _tasks = await _taskService.loadTasks();

    _isLoading = false;
    notifyListeners();
  }

  // Add a new task
  Future<void> addTask(String title) async {
    if (title.trim().isEmpty) return;

    final task = Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title.trim(),
      isCompleted: false,
      createdAt: DateTime.now(),
    );

    _tasks.insert(0, task); // Add at the top
    notifyListeners();
    await _taskService.saveTasks(_tasks);
  }

  // Toggle task completion status
  Future<void> toggleTaskCompletion(String taskId) async {
    final index = _tasks.indexWhere((task) => task.id == taskId);
    if (index == -1) return;

    _tasks[index] = _tasks[index].copyWith(
      isCompleted: !_tasks[index].isCompleted,
    );

    notifyListeners();
    await _taskService.saveTasks(_tasks);
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    _tasks.removeWhere((task) => task.id == taskId);
    notifyListeners();
    await _taskService.saveTasks(_tasks);
  }

  // Edit a task title
  Future<void> editTask(String taskId, String newTitle) async {
    if (newTitle.trim().isEmpty) return;

    final index = _tasks.indexWhere((task) => task.id == taskId);
    if (index == -1) return;

    _tasks[index] = _tasks[index].copyWith(title: newTitle.trim());
    notifyListeners();
    await _taskService.saveTasks(_tasks);
  }

  // Delete all completed tasks
  Future<void> deleteCompletedTasks() async {
    _tasks.removeWhere((task) => task.isCompleted);
    notifyListeners();
    await _taskService.saveTasks(_tasks);
  }
}