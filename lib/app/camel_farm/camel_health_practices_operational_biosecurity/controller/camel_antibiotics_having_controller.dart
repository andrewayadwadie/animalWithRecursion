import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelWhoWillGiveAntibioticsHavingController extends GetxController {  
  List<String> antibioticsHavingList = [
    "subjective".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString antibioticsHavingText =
      'Who gives antibiotics to animals?'.tr.obs;

  RxInt antibioticsHavingId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsHavingId.value = id+1;
    Navigator.pop(con);

    antibioticsHavingText.value = antibioticsHavingList[index];

    update();
  }
}
