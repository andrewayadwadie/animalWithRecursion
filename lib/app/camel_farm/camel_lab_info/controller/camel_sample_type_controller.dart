import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSampleTypeController extends GetxController {
  List<String> sampleTypeList = [
    "blood".tr,
    "pee".tr,
  ];

  RxString sampleTypeText = 'sample Type'.tr.obs;

  RxInt sampleTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sampleTypeId.value = id;
    Navigator.pop(con);

    sampleTypeText.value = sampleTypeList[index];

    update();
  }
}
