class AreaModel {
  final int id;
  final int name;
  final String cityId;


  AreaModel({
    required this.id,
    required this.cityId,
    required this.name,
  });

  factory AreaModel.fromJson(Map<String, dynamic> jsonData) {
    return AreaModel(
      id: jsonData['id'],
      cityId: jsonData['cityId'],
      name: jsonData['name'],
    );
  }
}
