 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/cow_disease_service.dart';

 

class CowGetDiseaseController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getDisease(animalType: 1);
  }

  List<dynamic> disease = [].obs;
  List<dynamic> choices = [].obs;
  List<TextEditingController> textEditCtrl = [];

  void changeCheckBox(bool? val, int index) {
    choices[index] = val ?? false;

    update();
  }

  RxBool loading = true.obs;

  dynamic getDisease({required int animalType}) {
    CowDiseaseService.getDisease(animalType).then((value) {
      if (value.runtimeType == List) {
        disease = value;
        loading.value = false;
        update();
        for (var i = 0; i < value.length; i++) {
          choices.add(false);
          textEditCtrl.add(TextEditingController());
        }
      } else {
        disease = [];
 
        update();
      }
    });

    return disease;
  }
}
