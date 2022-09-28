class GoatAnimalTypeModel {
  final int id;
  final String name;
  final String photo;

  GoatAnimalTypeModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory GoatAnimalTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatAnimalTypeModel(
      id: jsonData['id']??0,
      name: jsonData['name']??"",
      photo:jsonData['photo']??"",  

    );
  }
}
