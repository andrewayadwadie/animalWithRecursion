import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeFieldController extends GetxController {
  List<String> sizeList = [
    "Small (from 1 to 50 animal)".tr,
    "large (more than 50 animal)".tr,
  ];

  RxString sizeText = 'Size'.tr.obs;

  RxInt sizeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    sizeId.value = id+1;
    Navigator.pop(con);

    sizeText.value = sizeList[index];

    update();
  }
}
