


class SheepSymptomsTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  SheepSymptomsTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory SheepSymptomsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepSymptomsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
