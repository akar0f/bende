class Headings {
  int? headingId;
  String? headingName;

  Headings({
    this.headingId,
    this.headingName,
  });

  Headings copyWith({
    int? headingId,
    String? headingName,
  }) {
    return Headings(
      headingId: headingId ?? this.headingId,
      headingName: headingName ?? this.headingName,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'headingId': headingId,
      'headingName': headingName,
    };
  }

  factory Headings.fromJson(Map<String, dynamic> json) {
    return Headings(
      headingId: json['headingId'] as int?,
      headingName: json['headingName'] as String?,
    );
  }
}
