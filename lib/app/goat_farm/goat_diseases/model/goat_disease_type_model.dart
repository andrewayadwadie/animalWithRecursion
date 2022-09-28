class GoatDiseaseTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  GoatDiseaseTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory GoatDiseaseTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatDiseaseTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
