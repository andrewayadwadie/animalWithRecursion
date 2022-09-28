import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowMiscarriageTimeController extends GetxController {
  List<String> miscarriageTimeList = [
    " first third ".tr,
    " second third".tr,
    "third third".tr
  ];

  RxString miscarriageTimeText = 'Miscarriage Time '.tr.obs;

  RxInt miscarriageTimeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    miscarriageTimeId.value = id+1;
    Navigator.pop(con);

    miscarriageTimeText.value = miscarriageTimeList[index];

    update();
  }
}
