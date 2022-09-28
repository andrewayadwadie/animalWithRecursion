class ToolsTypeModel {
  final int id;
  final int toolId;
  final String name;


  ToolsTypeModel({
    required this.id,
    required this.name,
    required this.toolId,
  });

  factory ToolsTypeModel.fromJson(Map<String, dynamic> jsonData) {
    return ToolsTypeModel(
      id: jsonData['id'],
      name: jsonData['name'],
      toolId: jsonData['toolId'],
    );
  }
}
