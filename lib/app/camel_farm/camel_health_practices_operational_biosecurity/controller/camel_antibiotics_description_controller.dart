import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelAntibioticsDescriptionController extends GetxController {
  List<String> antibioticsDescriptionList = [
    "subjective".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString antibioticsDescriptionText =
      'Who prescribes the antibiotic?'.tr.obs;

  RxInt antibioticsDescriptionId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsDescriptionId.value = id+1;
    Navigator.pop(con);

    antibioticsDescriptionText.value = antibioticsDescriptionList[index];

    update();
  }
}
