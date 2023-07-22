class Assignment {
  int assignmentId;
  int userId;
  String courseId;
  String assignmentTitle;
  String assignmentDescription;
  DateTime deadline;
  String status;

  Assignment({
    required this.assignmentId,
    required this.userId,
    required this.courseId,
    required this.assignmentTitle,
    required this.assignmentDescription,
    required this.deadline,
    required this.status,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      assignmentId: json['assignment_id'],
      userId: json['user_id'],
      courseId: json['course_id'],
      assignmentTitle: json['assignment_title'],
      assignmentDescription: json['assignment_description'],
      deadline: DateTime.parse(json['deadline']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'assignment_id': assignmentId,
      'user_id': userId,
      'course_id': courseId,
      'assignment_title': assignmentTitle,
      'assignment_description': assignmentDescription,
      'deadline': deadline.toIso8601String(),
      'status': status,
    };
  }
}
