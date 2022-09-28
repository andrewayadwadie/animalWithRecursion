class SectionDateModel {
  final int sectionId;
  final String date;

  SectionDateModel({required this.sectionId, required this.date});
  factory SectionDateModel.fromJson(Map<String, dynamic> jsonData) {
    return SectionDateModel(
      sectionId: jsonData['SectionId'],
      date: jsonData['Date'],
    );
  }
}
