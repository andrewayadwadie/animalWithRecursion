
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/horse_add_model.dart';
import 'horse_get_image_list_controller.dart';
import 'horse_get_symptoms_controller.dart';

class HorseSendSymptomsController extends GetxController {
  HorseGetSymptomsController symptomsCtrl =
      Get.put(HorseGetSymptomsController());
  HorseGetImageListData imageListCtrl = Get.put(HorseGetImageListData());
  void sendSymptoms(BuildContext context) async {
    List<HorseAddModel> allData = [];
    for (var i = 0; i < symptomsCtrl.symptoms.length; i++) {
if(symptomsCtrl.textEditCtrl[i].text != ""){}
      allData.add(HorseAddModel(
        count: symptomsCtrl.textEditCtrl[i].text != ""?symptomsCtrl.textEditCtrl[i].text:"",
        note: symptomsCtrl.noteTextEditCtrl[i].text != "" ?symptomsCtrl.noteTextEditCtrl[i].text:"",
        syndromeId: symptomsCtrl.symptoms[i].id.toString() != ""?symptomsCtrl.symptoms[i].id.toString():"",
        photos: imageListCtrl.allImagesList[i]!=[]?imageListCtrl.allImagesList[i]:[],
      ));
    }
    log("all Syndromes data : $allData");
    log("all Syndromes images : ${imageListCtrl.allImagesList[0]}");

/*
    var res = await HorseSendSymptomsService.horseSendSymptomsService(
      allData: allData,
    );

    if (res.runtimeType == String) {
      SharedPreferencesHelper.setHorseStatusValue(12);
      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      Get.snackbar(
        'Error',
        "there are problem ,can't send data.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    } else if (res.runtimeType == String) {
      Get.snackbar(
        'Error',
        "there are problem ,can't send data.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    }
    */
  }
}
