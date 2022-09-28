import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelDifficultChildbirthController extends GetxController {
  List<String> difficultChildbirthList = [
    "self fertilizing".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString difficultChildbirthText = 'who is giving birth?'.tr.obs;

  RxInt difficultChildbirthId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    difficultChildbirthId.value = id+1;
    Navigator.pop(con);

    difficultChildbirthText.value = difficultChildbirthList[index];

    update();
  }
}
