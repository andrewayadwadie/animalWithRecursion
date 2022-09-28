import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepBloodParasitesController extends GetxController {
  List<String> bloodParasitesList = [
    "medicine 1", //? push in api id 211
    "medicine 2",//? push in api id 212
    "medicine 3",//? push in api id 213
  ];

  RxString bloodParasitesText = 'medicines used to prevent blood parasites'.tr.obs;

  RxInt bloodParasitesId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    bloodParasitesId.value = id+1;
    Navigator.pop(con);

    bloodParasitesText.value = bloodParasitesList[index];

    update();
  }
}
