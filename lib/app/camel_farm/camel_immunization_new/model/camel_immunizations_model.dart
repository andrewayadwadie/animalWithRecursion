class CamelImmunizationsModel {
  final int id;
  final String name;
  final List animalTypes;

  CamelImmunizationsModel({
    required this.id,
    required this.animalTypes,
    required this.name,
  });

  factory CamelImmunizationsModel.fromJson(Map<String, dynamic> jsonData) {
    return CamelImmunizationsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypes: jsonData['animalTypes'],
    );
  }
}
