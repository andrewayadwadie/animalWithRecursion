
class GovernmentModel {
  final int id;
  final String name;

  GovernmentModel({
    required this.id,
    required this.name,
  });

  factory GovernmentModel.fromJson(Map<String, dynamic> jsonData) {
    return GovernmentModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
