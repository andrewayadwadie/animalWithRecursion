import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelDistanceMovementController extends GetxController { 
    List<String> distanceList = [
    "less than 10 km".tr, //? push in api object with id 28
    "from 10 to 100 km".tr, //? push in api object with id 29
    "more than 100 km".tr, //? push in api object with id 30
    
  ];

  RxString distanceText = 'Camel distance movement'.tr.obs;

  RxInt distanceId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    distanceId.value = id+1;
    Navigator.pop(con);

    distanceText.value = distanceList[index];

    update();
  }
}