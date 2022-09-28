class SheepImmunizationsModel {
  final int id;
  final String name;
  final List animalTypes;

  SheepImmunizationsModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory SheepImmunizationsModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepImmunizationsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
