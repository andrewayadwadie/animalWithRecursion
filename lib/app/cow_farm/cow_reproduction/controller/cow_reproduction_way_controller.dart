import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowReproductionWayController extends GetxController {
    List<String> reproductionWayList = [
    "way 1",  //? push in api object with id 96
    "way 2", //? push in api object with id 97
    "way 3", //? push in api object with id 98
    "way 4", //? push in api object with id 99
    "other", //? push in api object with id 100
  ];

  RxString reproductionWayText = 'How is pregnancy diagnosed?'.tr.obs;

  RxInt reproductionWayId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    reproductionWayId.value = id+1;
    Navigator.pop(con);

    reproductionWayText.value = reproductionWayList[index];

    update();
  }
}