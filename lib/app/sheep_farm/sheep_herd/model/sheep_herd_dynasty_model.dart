class SheepDynastyModel {
  final int id;
  final String name;
  final int animalTypeId;
  final String animalTypeName;
  SheepDynastyModel({
    required this.id,
    required this.name,
    required this.animalTypeId,
    required this.animalTypeName,
  });

  factory SheepDynastyModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepDynastyModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypeId: jsonData['animalTypeId'],
      animalTypeName: jsonData['animalTypeName'],
    );
  }
}
