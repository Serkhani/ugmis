class Fault {
  int faultId;
  int userId;
  String faultType;
  String description;
  DateTime dateReported;
  String status;

  Fault({
    required this.faultId,
    required this.userId,
    required this.faultType,
    required this.description,
    required this.dateReported,
    required this.status,
  });

  factory Fault.fromJson(Map<String, dynamic> json) {
    return Fault(
      faultId: json['fault_id'],
      userId: json['user_id'],
      faultType: json['fault_type'],
      description: json['description'],
      dateReported: DateTime.parse(json['date_reported']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fault_id': faultId,
      'user_id': userId,
      'fault_type': faultType,
      'description': description,
      'date_reported': dateReported.toIso8601String(),
      'status': status,
    };
  }
}
