import 'dart:developer';

import 'package:get/get.dart';

import '../model/question_model.dart';

class QuestionCheckBoxController extends GetxController {
  final Question question;
  QuestionCheckBoxController(this.question);

  late Map<String, List<bool>> selected = {};

  @override
  void onInit() {
    selected['${question.id}'] =
        question.questionAnswers.map((e) => false).toList();
    super.onInit();
  }

  void changeValue(bool value, int index) {
    selected['${question.id}']![index] = value;

    log("selected : $selected");
    update();
  }
}
