import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatChemicalsFarmUsedController extends GetxController {
  List<String> chemicalsFarmUsedList = [
    "Chemical 1", //? push in api id 208
    "Chemical 2", //? push in api id 209
    "Chemical 3", //? push in api id 210
  ];

  RxString chemicalsFarmUsedText = 'chemicals used for farm'.tr.obs;

  RxInt chemicalsFarmUsedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    chemicalsFarmUsedId.value = id+1;
    Navigator.pop(con);

    chemicalsFarmUsedText.value = chemicalsFarmUsedList[index];

    update();
  }
}
