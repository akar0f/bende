import 'package:bende/app/models/subjects_model.dart';

class ReportData {
  List<Subjects>? subjects;

  ReportData({
    this.subjects,
  });

  ReportData copyWith({
    List<Subjects>? subjects,
  }) {
    return ReportData(
      subjects: subjects ?? this.subjects,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subjects': subjects,
    };
  }

  factory ReportData.fromJson(Map<String, dynamic> json) {
    return ReportData(
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => Subjects.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
