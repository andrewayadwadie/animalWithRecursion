class HorseDiseaseTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  HorseDiseaseTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory HorseDiseaseTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseDiseaseTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
