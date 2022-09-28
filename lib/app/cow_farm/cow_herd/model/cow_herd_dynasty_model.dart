class CowDynastyModel {
  final int id;
  final String name;
  final int animalTypeId;
  final String animalTypeName;
  CowDynastyModel({
    required this.id,
    required this.name,
    required this.animalTypeId,
    required this.animalTypeName,
  });

  factory CowDynastyModel.fromJson(Map<String, dynamic> jsonData) {
    return CowDynastyModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypeId: jsonData['animalTypeId'],
      animalTypeName: jsonData['animalTypeName'],
    );
  }
}
