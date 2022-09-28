class GoatImmunizationsModel {
  final int id;
  final String name;
  final List animalTypes;

  GoatImmunizationsModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory GoatImmunizationsModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatImmunizationsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
