


class CowSymptomsTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  CowSymptomsTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CowSymptomsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return CowSymptomsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
