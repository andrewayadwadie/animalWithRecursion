import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/cow_another_animal_type_model.dart';
import '../service/cow_another_type_service.dart';

 

class CowAnotherAnimalController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getEducationCount();
  }

  List<CowAnimalTypeModel> animalType = [];
  final RxBool _loading = true.obs;

  String animalTypeText = 'choose Animal Type'.tr;

  int animalTypeId = 452;

  void onTapSelected(BuildContext con, int id, int index) {
    switch (id) {
      case 1:
        animalTypeId = 447;
        break;
      case 2:
        animalTypeId = 448;
        break;
      case 3:
        animalTypeId = 449;
        break;
      case 4:
        animalTypeId = 450;
        break;
      case 5:
        animalTypeId = 451;
        break;
      default:
        animalTypeId = 452;
    }
 
    Navigator.pop(con);

    animalTypeText = animalType[index].name;

    update();
  }

  bool get loading => _loading.value;
  dynamic getEducationCount() {
    _loading.value = false;
    CowAnotherAnimalService.getAnimalType().then((value) {
      if (value.runtimeType == List<CowAnimalTypeModel>) {
        animalType = value;

        update();
      } else {
        Get.snackbar("Error", "sorry , there is a problem try again later");
      }
    });

    return animalType;
  }
}
