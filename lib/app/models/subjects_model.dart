import 'package:bende/app/models/headings_model.dart';

class Subjects {
  int? subjectId;
  String? subjectTitle;
  List<Headings>? headings;

  Subjects({
    this.subjectId,
    this.subjectTitle,
    this.headings,
  });

  Subjects copyWith({
    int? subjectId,
    String? subjectTitle,
    List<Headings>? headings,
  }) {
    return Subjects(
      subjectId: subjectId ?? this.subjectId,
      subjectTitle: subjectTitle ?? this.subjectTitle,
      headings: headings ?? this.headings,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subjectId': subjectId,
      'subjectTitle': subjectTitle,
      'headings': headings,
    };
  }

  factory Subjects.fromJson(Map<String, dynamic> json) {
    return Subjects(
      subjectId: json['subjectId'] as int?,
      subjectTitle: json['subjectTitle'] as String?,
      headings: (json['headings'] as List<dynamic>?)
          ?.map((e) => Headings.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
