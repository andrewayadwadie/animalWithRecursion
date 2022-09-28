class HorseDynastyModel {
  final int id;
  final String name;
  final int animalTypeId;
  final String animalTypeName;
  HorseDynastyModel({
    required this.id,
    required this.name,
    required this.animalTypeId,
    required this.animalTypeName,
  });

  factory HorseDynastyModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseDynastyModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypeId: jsonData['animalTypeId'],
      animalTypeName: jsonData['animalTypeName'],
    );
  }
}
