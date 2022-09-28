import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SheepSendDiseaseDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer(List<dynamic>? diseaseId, List<TextEditingController>? count) {
    for (var j = 0; j < diseaseId!.length; j++) {
      if (count![j].text != "") {
        answers.add({"DiseaseId": diseaseId[j].id, "Count": count[j].text});
      }
      update();
    }
  }
}
