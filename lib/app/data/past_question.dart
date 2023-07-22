class PastExamQuestion {
  int paperId;
  String courseId;
  int lecturerId;
  int year;

  PastExamQuestion({
    required this.paperId,
    required this.courseId,
    required this.lecturerId,
    required this.year,
  });

  factory PastExamQuestion.fromJson(Map<String, dynamic> json) {
    return PastExamQuestion(
      paperId: json['paper_id'],
      courseId: json['course_id'],
      lecturerId: json['lecturer_id'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paper_id': paperId,
      'course_id': courseId,
      'lecturer_id': lecturerId,
      'year': year,
    };
  }
}
