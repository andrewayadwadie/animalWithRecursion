 

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/goat_symptoms_service.dart';

 

class GoatGetSymptomsController extends GetxController {
  @override
  void onInit() {
    super.onInit(); 
    getsymptoms(animalType: 4);
  }

  List<dynamic> symptoms = [].obs;
  List<dynamic> choices = [].obs;
  List<TextEditingController> textEditCtrl = [];
  List<TextEditingController> noteTextEditCtrl = [];
  void changeCheckBox(bool? val, int index) {
    choices[index] = val ?? false;
    update();
  }

  RxBool loading = true.obs;

  dynamic getsymptoms({required int animalType}) {
    GoatSymptomsService.getSymptoms(animalType).then((value) {
      if (value.runtimeType == List) {
        symptoms = value;
        loading.value = false;
        update();
        for (var i = 0; i < value.length; i++) {
          choices.add(false);
          textEditCtrl.add(TextEditingController());
          noteTextEditCtrl.add(TextEditingController());
        }
      } else {
        symptoms = [];
        update();
      }
    });
    // }
    return symptoms;
  }
}
