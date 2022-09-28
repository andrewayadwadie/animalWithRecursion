import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowFertilizationMethodController extends GetxController {
  List<String> fertilizationMethodList = [
    "self fertilizing".tr, //? push in api object with id 109
    "private vet".tr, //? push in api object with id 110 
    "Government veterinarian".tr, //? push in api object with id 111
    "veterinary technician".tr, //? push in api object with id 112
  ];

  RxString fertilizationMethodText = 'Who does artificial insemination?'.tr.obs;

  RxInt fertilizationMethodId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    fertilizationMethodId.value = id+1;
    Navigator.pop(con);

    fertilizationMethodText.value = fertilizationMethodList[index];

    update();
  }
}
