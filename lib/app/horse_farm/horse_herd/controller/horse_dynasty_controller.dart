import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorseDynastyController extends GetxController {
    List<String> dynastyList = [
    "Hamor",
    "magahem",
    "wadh",
    "onther",
  ];

  RxString dynastyText = 'Horse Dynasty'.obs;

  // RxInt dynastyId = 0.obs;

  void onTapSelected(BuildContext con, index) { 
    // dynastyId.value = id;
    Navigator.pop(con);

    dynastyText.value = dynastyList[index];

    update();
  }
}