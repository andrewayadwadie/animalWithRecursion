import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatTimesBuyingNewanimalController extends GetxController {
    List<String> timesNewList = [
    "when necessary".tr, //? push in api object with id 36
    "Throughout the year".tr, //? push in api object with id 37
    "seasonal".tr, //? push in api object with id 38
    "other".tr,     //? push in api object with id 39
    
  ];

  RxString timesNewText = 'What are the times to buy animals?'.tr.obs;

  RxInt timesNewId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    timesNewId.value = id+1;
    Navigator.pop(con);

    timesNewText.value = timesNewList[index];

    update();
  }
}