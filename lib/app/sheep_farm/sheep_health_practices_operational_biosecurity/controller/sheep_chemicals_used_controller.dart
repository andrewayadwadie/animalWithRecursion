import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepChemicalsUsedController extends GetxController {
  List<String> chemicalsUsedList = [
    "Chemical 1", //? push in api id 205
    "Chemical 2", //? push in api id 206
    "Chemical 3", //? push in api id 207
  ];

  RxString chemicalsUsedText = 'Select the chemicals used'.tr.obs;

  RxInt chemicalsUsedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    chemicalsUsedId.value = id+1;
    Navigator.pop(con);

    chemicalsUsedText.value = chemicalsUsedList[index];

    update();
  }
}
