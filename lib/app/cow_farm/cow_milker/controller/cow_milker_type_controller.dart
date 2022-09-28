import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowMilkerTypeController extends GetxController {
  List<String> milkerTypeList = [
    "automatic".tr , //? push in api id 121
    "semi automatic".tr ,//? push in api id 122
    "manual".tr ,//? push in api id 123
  ];

  RxString milkerTypeText = 'What type of milker?'.tr.obs;

  RxInt milkerTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    milkerTypeId.value = id+1;
    Navigator.pop(con);

    milkerTypeText.value = milkerTypeList[index];

    update();
  }
}
