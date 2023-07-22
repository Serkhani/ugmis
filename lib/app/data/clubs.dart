class Club {
  int clubId;
  String clubName;
  String clubDescription;

  Club({
    required this.clubId,
    required this.clubName,
    required this.clubDescription,
  });

  factory Club.fromJson(Map<String, dynamic> json) {
    return Club(
      clubId: json['club_id'],
      clubName: json['club_name'],
      clubDescription: json['club_description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'club_id': clubId,
      'club_name': clubName,
      'club_description': clubDescription,
    };
  }
}
