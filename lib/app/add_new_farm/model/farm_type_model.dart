class FarmTypeModel {
  final int id;
  final String name;

  FarmTypeModel({
    required this.id,
    required this.name,
  });

  factory FarmTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return FarmTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
