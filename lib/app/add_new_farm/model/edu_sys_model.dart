class EduSysModel {
  final int id;
  final String name;

  EduSysModel({
    required this.id,
    required this.name,
  });

  factory EduSysModel.fromJson(Map<String, dynamic> jsonData) {
    return EduSysModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}

