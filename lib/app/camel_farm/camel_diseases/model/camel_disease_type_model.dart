class CamelDiseaseTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  CamelDiseaseTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CamelDiseaseTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return CamelDiseaseTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
