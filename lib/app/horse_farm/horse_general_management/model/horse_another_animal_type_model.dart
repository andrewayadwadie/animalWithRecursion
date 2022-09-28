class HorseAnimalTypeModel {
  final int id;
  final String name;
  final String photo;

  HorseAnimalTypeModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory HorseAnimalTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseAnimalTypeModel(
      id: jsonData['id']??0,
      name: jsonData['name']??"",
      photo:jsonData['photo']??"",  

    );
  }
}
