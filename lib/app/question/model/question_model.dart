import 'section_model.dart';

class Question {
  final int id;
  final String name;
  final String type;
  final List<QuestionAnswers> questionAnswers;
  final List<Question> children;

  Question(
      {required this.id,
      required this.name,
      required this.type,
      required this.questionAnswers,
      required this.children});

  factory Question.fromJson(Map<String, dynamic> jsonData) {
    return Question(
      id: jsonData['id'] ?? 0,
      name: jsonData['name'] ?? '',
      type: jsonData['type'] ?? '',
      questionAnswers: jsonData['questionAnswers'] != null
          ? (jsonData['questionAnswers'] as List)
              .map((i) => QuestionAnswers.fromJson(i))
              .toList()
          : [],
      children: jsonData['children'] != null
          ? (jsonData['children'] as List)
              .map((i) => Question.fromJson(i))
              .toList()
          : [],
    );
  }
}
