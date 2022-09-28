import 'question_model.dart';

class SectionModel {
  final int id;
  final String name;
  final List<Question> questionsWithNoChildrens;
  final List<Question> questionsWithChildrens;
  SectionModel(
      {required this.id,
      required this.name,
      required this.questionsWithNoChildrens,
      required this.questionsWithChildrens});

  factory SectionModel.fromJson(Map<String, dynamic> jsonData) {
    return SectionModel(
      id: jsonData['id'] ?? 0,
      name: jsonData['name'] ?? '',
      questionsWithNoChildrens: jsonData['questionsWithNoChildrens'] != null
          ? (jsonData['questionsWithNoChildrens'] as List)
              .map((i) => Question.fromJson(i))
              .toList()
          : [],
      questionsWithChildrens: jsonData['questionsWithChildrens'] != null
          ? (jsonData['questionsWithChildrens'] as List)
              .map((i) => Question.fromJson(i))
              .toList()
          : [],
    );
  }
}

class QuestionAnswers {
  final int id;
  final String name;

  QuestionAnswers({
    required this.id,
    required this.name,
  });

  factory QuestionAnswers.fromJson(Map<String, dynamic> jsonData) {
    return QuestionAnswers(
      id: jsonData['id'] ?? 0,
      name: jsonData['name'] ?? '',
    );
  }
}
