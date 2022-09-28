import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityTypeFieldController extends GetxController {
  List<String> activityTypeList = [
    "racing" .tr,
    "meat production" .tr,
  ];

  RxString activityTypeText = 'Farm Activity Type'.tr.obs;

  RxInt activityTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    activityTypeId.value = id;
    Navigator.pop(con);

    activityTypeText.value = activityTypeList[index];

    update();
  }
}
