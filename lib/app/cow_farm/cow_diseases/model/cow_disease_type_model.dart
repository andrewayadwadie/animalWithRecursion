class CowDiseaseTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  CowDiseaseTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CowDiseaseTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return CowDiseaseTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
