import 'dart:typed_data';

class Announcement {
  int announcementId;
  String title;
  String content;
  DateTime dateCreated;
  Uint8List  image;
  int userId;

  Announcement({
    required this.announcementId,
    required this.title,
    required this.content,
    required this.dateCreated,
    required this.image,
    required this.userId,
  });

  // Factory method to create an Announcement object from a map (usually from database query results)
  factory Announcement.fromJson(Map<String, dynamic> json){
    return Announcement(
      announcementId: json['announcement_id'],
      title: json['title'],
      content: json['content'],
      dateCreated: DateTime.parse(json['date_created']),
      image: json['image'],
      userId: json['user_id'],
    );
  }

  // Method to convert the Announcement object into a json (usually for inserting or updating in the database)
  Map<String, dynamic> toJson() {
    return {
      'announcement_id': announcementId,
      'title': title,
      'content': content,
      'date_created': dateCreated.toUtc().toIso8601String(),
      'image': image,
      'user_id': userId,
    };
  }
}
