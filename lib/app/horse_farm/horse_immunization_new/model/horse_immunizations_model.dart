class HorseImmunizationsModel {
  final int id;
  final String name;
  final List animalTypes;

  HorseImmunizationsModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory HorseImmunizationsModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseImmunizationsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
