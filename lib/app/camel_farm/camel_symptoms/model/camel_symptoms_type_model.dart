


class CamelSymptomsTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  CamelSymptomsTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CamelSymptomsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return CamelSymptomsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
