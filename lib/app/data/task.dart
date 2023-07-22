class Task {
  int taskId;
  int userId;
  String taskTitle;
  String? taskDescription;
  DateTime? deadline;
  bool completed;

  Task({
    required this.taskId,
    required this.userId,
    required this.taskTitle,
    this.taskDescription,
    this.deadline,
    required this.completed,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      taskId: json['task_id'],
      userId: json['user_id'],
      taskTitle: json['task_title'],
      taskDescription: json['task_description'],
      deadline:
          json['deadline'] != null ? DateTime.parse(json['deadline']) : null,
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'task_id': taskId,
      'user_id': userId,
      'task_title': taskTitle,
      'task_description': taskDescription,
      'deadline': deadline?.toIso8601String(),
      'completed': completed,
    };
  }
}
