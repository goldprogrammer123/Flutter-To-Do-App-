import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final String filter;

  const EmptyStateWidget({super.key, required this.filter});

  @override
  Widget build(BuildContext context) {
    String message;
    String subMessage;
    IconData icon;

    switch (filter) {
      case 'active':
        message = 'No Active Tasks';
        subMessage = 'All tasks are completed!';
        icon = Icons.task_alt;
        break;
      case 'completed':
        message = 'No Completed Tasks';
        subMessage = 'Complete a task to see it here.';
        icon = Icons.check_circle_outline;
        break;
      default:
        message = 'No Tasks Yet';
        subMessage = 'Tap the "+ Add Task" button\nto create your first task!';
        icon = Icons.checklist_rounded;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            decoration: const BoxDecoration(
              color: Color(0xFFEEEDFF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 64,
              color: const Color(0xFF6C63FF),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            message,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D2D2D),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}