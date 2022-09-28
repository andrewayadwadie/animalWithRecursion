import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepSourcesBuyingNewanimalController extends GetxController {
    List<String> sourceNewList = [
    "another farm".tr, //? push in api object with id 40
    "Markets".tr, //? push in api object with id 41
    "importation".tr, //? push in api object with id 42
    "other".tr,       //? push in api object with id 43
  ];

  RxString sourceNewText = 'What are the sources of animal purchase?'.tr.obs;

  RxInt sourceNewId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    sourceNewId.value = id+1;
    Navigator.pop(con);

    sourceNewText.value = sourceNewList[index];

    update();
  }
}