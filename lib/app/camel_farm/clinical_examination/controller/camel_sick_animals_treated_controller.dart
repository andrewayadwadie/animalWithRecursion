import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSickAnimalsTreatedController extends GetxController {
  List<String> sickAnimalsTreatedList = [
    "self treatment".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString sickAnimalsTreatedText = 'How are sick animals treated?'.tr.obs;

  RxInt sickAnimalsTreatedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sickAnimalsTreatedId.value = id+1;
    Navigator.pop(con);

    sickAnimalsTreatedText.value = sickAnimalsTreatedList[index];

    update();
  }
}
