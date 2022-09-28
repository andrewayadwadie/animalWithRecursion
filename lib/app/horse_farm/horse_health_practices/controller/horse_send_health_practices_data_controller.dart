import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_clean_vechicles_radio_controller.dart';
import 'horse_clean_visitor_radio_controller.dart';
import 'horse_good_sanitation_radio_controller.dart';
import 'horse_health_practices_textfield_controller.dart';
import 'horse_treated_radio_controller.dart';
import 'horse_visitor_cloths_radio_controller.dart';
import 'horse_water_source_radio_controller.dart';
import 'horse_workers_cloths_radio_controller.dart';

class HorseHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());
  HorseCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(HorseCleanVehiclesRadioController());
  HorseCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(HorseCleanVisitorRadioController());
  HorseVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(HorseVisitorClothsRadioController());
  HorseWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(HorseWorkersClothsRadioController());

  HorseWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(HorseWaterSourceRadioController());
  HorseGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(HorseGoodSanitationRadioController());
  HorseTreatedRadioController treatedRadioCtrl =
      Get.put(HorseTreatedRadioController());
  HorseHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(HorseHealthPractciesTextFieldController());
  void fillAnswerListWithData() {
//!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(
        id: 137, answer: healthPractciesTextFieldCtrl.visitorCloths);
    sendDataCtrl.addAnswer(
        id: 140, answer: healthPractciesTextFieldCtrl.workerscloths);
    sendDataCtrl.addAnswer(
        id: 143, answer: healthPractciesTextFieldCtrl.farmDistance);
    sendDataCtrl.addAnswer(
        id: 144, answer: healthPractciesTextFieldCtrl.waterDistance);
    sendDataCtrl.addAnswer(
        id: 145, answer: healthPractciesTextFieldCtrl.treesDistance);
    sendDataCtrl.addAnswer(
        id: 146, answer: healthPractciesTextFieldCtrl.roadsDistance);
    sendDataCtrl.addAnswer(
        id: 147, answer: healthPractciesTextFieldCtrl.citiesDistance);

    //!--------------------------
    //* Radio button
    if (cleanVehiclesRadioCtrl.charcter == HorseCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter == HorseCleanVehiclesRadio.no) {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter ==
        HorseCleanVehiclesRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 352, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (treatedRadioCtrl.charcter == HorseTreatedRadio.yes) {
      sendDataCtrl.addAnswer(id: 292, answer: "");
    } else if (treatedRadioCtrl.charcter == HorseTreatedRadio.no) {
      sendDataCtrl.addAnswer(id: 293, answer: "");
    } else if (treatedRadioCtrl.charcter == HorseTreatedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 401, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == HorseCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter == HorseCleanVisitorRadio.no) {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter ==
        HorseCleanVisitorRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 353, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == HorseVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else if (visitorClothsRadioCtrl.charcter == HorseVisitorClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    } else if (visitorClothsRadioCtrl.charcter ==
        HorseVisitorClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 354, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == HorseWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else if (workersClothsRadioCtrl.charcter == HorseWorkersClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    } else if (workersClothsRadioCtrl.charcter ==
        HorseWorkersClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 355, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == HorseWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        HorseWaterSourceRadio.untreated) {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        HorseWaterSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 356, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == HorseGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        HorseGoodSanitationRadio.no) {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        HorseGoodSanitationRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 357, answer: "");
    }
  }

  void sendData(context) async {
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(6);

      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      sendDataCtrl.answers.clear();
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      sendDataCtrl.answers.clear();
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
      sendDataCtrl.answers.clear();
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
  }
}
