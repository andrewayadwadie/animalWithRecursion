class ToolsModel {
  final int id;
  final String name;

  ToolsModel({
    required this.id,
    required this.name,
  });

  factory ToolsModel.fromJson(Map<String, dynamic> jsonData) {
    return ToolsModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
