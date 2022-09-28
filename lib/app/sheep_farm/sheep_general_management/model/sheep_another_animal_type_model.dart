class SheepAnimalTypeModel {
  final int id;
  final String name;
  final String photo;

  SheepAnimalTypeModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory SheepAnimalTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepAnimalTypeModel(
      id: jsonData['id']??0,
      name: jsonData['name']??"",
      photo:jsonData['photo']??"",  

    );
  }
}
