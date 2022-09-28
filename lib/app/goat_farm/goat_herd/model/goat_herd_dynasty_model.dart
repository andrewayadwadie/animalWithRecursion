class GoatDynastyModel {
  final int id;
  final String name;
  final int animalTypeId;
  final String animalTypeName;
  GoatDynastyModel({
    required this.id,
    required this.name,
    required this.animalTypeId,
    required this.animalTypeName,
  });

  factory GoatDynastyModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatDynastyModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypeId: jsonData['animalTypeId'],
      animalTypeName: jsonData['animalTypeName'],
    );
  }
}
