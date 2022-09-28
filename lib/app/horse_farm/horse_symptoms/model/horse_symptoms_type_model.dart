


class HorseSymptomsTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  HorseSymptomsTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory HorseSymptomsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseSymptomsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
