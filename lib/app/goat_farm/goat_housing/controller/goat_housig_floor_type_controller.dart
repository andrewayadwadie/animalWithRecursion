import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatHousingFloorTypeController extends GetxController {
    List<String> floorTypeList = [
    "floor 1", //? push in api object with id 55
    "floor 2", //? push in api object with id 56
    "floor 3",  //? push in api object with id 57
    "floor 4",   //? push in api object with id 58
    "others", //? push in api object with id 59
  ];

  RxString floorTypeText = 'Floor Type'.tr.obs;

  RxInt floorTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    floorTypeId.value = id+1;
    Navigator.pop(con);

    floorTypeText.value = floorTypeList[index];

    update();
  }
}