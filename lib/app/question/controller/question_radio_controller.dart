import 'dart:developer';

import 'package:get/get.dart';

class QuestionRadioController extends GetxController {
  Map<String, int> selectedMap = {};
  Map<String, String> selectedMapNames = {};
  void changeValue(int? value, String key, String? nameValue) {
    selectedMap[key] = value!;
    selectedMapNames[key] = nameValue!;
    log("value id :$value");
    log("value name :$nameValue");
    update();
  }
}
