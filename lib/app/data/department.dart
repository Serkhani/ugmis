class Department {
  int departmentId;
  String departmentName;
  String headOfDepartment;
  String departmentTimeTable;

  Department({
    required this.departmentId,
    required this.departmentName,
    required this.headOfDepartment,
    required this.departmentTimeTable,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      departmentId: json['department_id'],
      departmentName: json['department_name'],
      headOfDepartment: json['head_of_department'],
      departmentTimeTable: json['department_time_table'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'department_id': departmentId,
      'department_name': departmentName,
      'head_of_department': headOfDepartment,
      'department_time_table': departmentTimeTable,
    };
  }
}
