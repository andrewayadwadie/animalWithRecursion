class SheepDiseaseTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  SheepDiseaseTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory SheepDiseaseTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepDiseaseTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
