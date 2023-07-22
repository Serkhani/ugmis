import 'dart:convert';

class Course {
  String courseId;
  String courseName;
  int deptId;
  String department;
  int creditHours;
  String description;
  String semester;
  String createdAt;
  String updatedAt;

  Course({
    required this.courseId,
    required this.courseName,
    required this.deptId,
    required this.department,
    required this.creditHours,
    required this.description,
    required this.semester,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseId: json['course_id'],
      courseName: json['course_name'],
      deptId: json['dept_id'],
      department: json['department'],
      creditHours: json['creditHours'],
      description: json['description'],
      semester: json['semester'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'course_id': courseId,
      'course_name': courseName,
      'dept_id': deptId,
      'department': department,
      'creditHours': creditHours,
      'description': description,
      'semester': semester,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
