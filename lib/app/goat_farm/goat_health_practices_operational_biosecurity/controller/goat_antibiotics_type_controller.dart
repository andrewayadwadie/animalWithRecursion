import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatAntibioticsTypeController extends GetxController {
  List<String> antibioticsTypeList = [
    "antibiotics type 1 (source1) ", 
    "antibiotics type 2  (source2)",
    "antibiotics type 3 (source3) ",
  ];

  RxString antibioticsTypeText = 'What type of antibiotics used?'.tr.obs;

  RxInt antibioticsTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsTypeId.value = id+1;
    Navigator.pop(con);

    antibioticsTypeText.value = antibioticsTypeList[index];

    update();
  }
}
