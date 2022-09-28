class AnimalTypeModel {
  final int id;
  final String name;
  final String photo;

  AnimalTypeModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory AnimalTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return AnimalTypeModel(
      id: jsonData['id']??0,
      name: jsonData['name']??"",
      photo:jsonData['photo']??"",  

    );
  }
}
