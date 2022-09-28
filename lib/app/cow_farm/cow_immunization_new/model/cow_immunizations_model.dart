class CowImmunizationsModel {
  final int id;
  final String name;
  final List animalTypes;

  CowImmunizationsModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CowImmunizationsModel.fromJson(Map<String, dynamic> jsonData) {
    return CowImmunizationsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
