class DynastyModel {
  final int id;
  final String name;
  final int animalTypeId;
  final String animalTypeName;
  DynastyModel({
    required this.id,
    required this.name,
    required this.animalTypeId,
    required this.animalTypeName,
  });

  factory DynastyModel.fromJson(Map<String, dynamic> jsonData) {
    return DynastyModel(
      id: jsonData['id'],
      name: jsonData['name'],
      animalTypeId: jsonData['animalTypeId'],
      animalTypeName: jsonData['animalTypeName'],
    );
  }
}
