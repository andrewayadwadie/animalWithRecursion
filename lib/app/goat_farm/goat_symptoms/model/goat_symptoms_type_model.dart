


class GoatSymptomsTypeModel {
  final int id;
  final String name;
  final List animalTypes;

  GoatSymptomsTypeModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory GoatSymptomsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatSymptomsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
