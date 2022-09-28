import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowBreedTypeController extends GetxController {
    List<String> breedTypeList = [
    "type 1", //? push in api object with id 103
    "type 2", //? push in api object with id 104
    "type 3", //? push in api object with id 105
    "other",  //? push in api object with id 106
  ];

  RxString breedTypeText = 'What type of breed?'.tr.obs;

  RxInt breedTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    breedTypeId.value = id+1;
    Navigator.pop(con);

    breedTypeText.value = breedTypeList[index];

    update();
  }
}