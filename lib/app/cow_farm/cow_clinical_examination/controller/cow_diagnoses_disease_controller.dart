import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowDiagnosesDiseaseController extends GetxController {
  List<String> diagnosesDiseaseList = [
    "subjective".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString diagnosesDiseaseText = 'Who diagnoses disease states?'.tr.obs;

  RxInt diagnosesDiseaseId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    diagnosesDiseaseId.value = id+1;
    Navigator.pop(con);

    diagnosesDiseaseText.value = diagnosesDiseaseList[index];

    update();
  }
}
