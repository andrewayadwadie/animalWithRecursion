import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/section_model.dart';
import '../services/question_service.dart';

class SectionRecursionController extends GetxController {
  SectionModel sections = SectionModel(
      id: 0,
      name: "",
      questionsWithNoChildrens: [],
      questionsWithChildrens: []);
  final RxBool _loading = true.obs;
//!===============================================================
//? data with no children
  Map<String, TextEditingController> textControllersWithNoChildren = {};
  Map<String, TextEditingController> datesWithNoChildren = {};
  Map<String, List<QuestionAnswers>> radioAnswersWithNoChildren = {};
  Map<String, List<QuestionAnswers>> checkBoxAnswersWithNoChildren = {};
//!================================================================
//? data with children
  Map<String, TextEditingController> textControllersWithChildren = {};
  Map<String, TextEditingController> datesWithChildren = {};
  Map<String, List<QuestionAnswers>> radioAnswersWithChildren = {};
  Map<String, List<QuestionAnswers>> checkBoxAnswersWithChildren = {};
  @override
  void onInit() {
    getSections(1);
    super.onInit();
  }

  bool get loading => _loading.value;
  dynamic getSections(int sectionNo) {
    if (_loading.value == true) {
      QuestionService.getQuestion(sectionNo).then((value) {
        if (value.runtimeType == SectionModel) {
          sections = value;
          _loading.value = false;
          //!===============================================================
          //? get data with no children
          for (var question in sections.questionsWithNoChildrens) {
            if (question.type == 'text') {
              textControllersWithNoChildren["${question.id}"] =
                  TextEditingController();
            }
            if (question.type == 'date') {
              datesWithNoChildren["${question.id}"] = TextEditingController();
            }
            if (question.type == 'radio button') {
              radioAnswersWithNoChildren["${question.id}"] =
                  question.questionAnswers;
            }
            if (question.type == 'check') {
              checkBoxAnswersWithNoChildren["${question.id}"] =
                  question.questionAnswers;
            }
          }
          //!===============================================================
          //? get data with children
          for (var question in sections.questionsWithChildrens) {
            if (question.type == 'text') {
              textControllersWithChildren["${question.id}"] =
                  TextEditingController();
            }
            if (question.type == 'date') {
              datesWithChildren["${question.id}"] = TextEditingController();
            }
            if (question.type == 'radio button') {
              radioAnswersWithChildren["${question.id}"] =
                  question.questionAnswers;
            }
            if (question.type == 'check') {
              checkBoxAnswersWithChildren["${question.id}"] =
                  question.questionAnswers;
            }
          }
          update();
        }
      });
    }
    return sections;
  }
}
