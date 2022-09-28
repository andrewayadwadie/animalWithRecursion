class CityModel {
  final int id;
  final String name;
  final int govermorateId;


  CityModel({
    required this.id,
    required this.govermorateId,
    required this.name,
  });

  factory CityModel.fromJson(Map<String, dynamic> jsonData) {
    return CityModel(
      id: jsonData['id'],
      govermorateId: jsonData['govermorateId'],
      name: jsonData['name'],
    );
  }
}
