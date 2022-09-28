import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorseSanitizersUsedController extends GetxController {
  List<String> sanitizersUsedList = [
    "sanitizers 1",//? push in api id 183
    "sanitizers 2",//? push in api id 184
    "sanitizers 3",//? push in api id 185
  ];

  RxString sanitizersUsedText = 'What type of sanitizers used?'.tr.obs;

  RxInt sanitizersUsedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sanitizersUsedId.value = id+1;
    Navigator.pop(con);

    sanitizersUsedText.value = sanitizersUsedList[index];

    update();
  }
}
