class CowAnimalTypeModel {
  final int id;
  final String name;
  final String photo;

  CowAnimalTypeModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory CowAnimalTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return CowAnimalTypeModel(
      id: jsonData['id']??0,
      name: jsonData['name']??"",
      photo:jsonData['photo']??"",  

    );
  }
}
