import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSanitizersMilkerToolsController extends GetxController {
  List<String> sanitizersMilkerToolsList = [
    "sanitizers 1",//? push in api id 186
    "sanitizers 2",//? push in api id 187
    "sanitizers 3",//? push in api id 188
  ];

  RxString sanitizersMilkerToolsText = 'What type of sanitizers used to Milker Tools?'.tr.obs;

  RxInt sanitizersMilkerToolsId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sanitizersMilkerToolsId.value = id+1;
    Navigator.pop(con);

    sanitizersMilkerToolsText.value = sanitizersMilkerToolsList[index];

    update();
  }
}
