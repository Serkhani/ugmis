class Textbook {
  int textbookId;
  String title;
  String author;
  int publicationYear;
  String description;
  String thumbnail;

  Textbook({
    required this.textbookId,
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.description,
    required this.thumbnail,
  });

  factory Textbook.fromJson(Map<String, dynamic> json) {
    return Textbook(
      textbookId: json['textbook_id'],
      title: json['title'],
      author: json['author'],
      publicationYear: json['publication_year'],
      description: json['description'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'textbook_id': textbookId,
      'title': title,
      'author': author,
      'publication_year': publicationYear,
      'description': description,
      'thumbnail': thumbnail,
    };
  }
}
