import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../general_management/service/camel_send_general_data_service.dart';
import 'camel_clean_vechicles_radio_controller.dart';
import 'camel_clean_visitor_radio_controller.dart';
import 'camel_good_sanitation_radio_controller.dart';
import 'camel_health_practices_textfield_controller.dart';
import 'camel_treated_radio_controller.dart';
import 'camel_visitor_cloths_radio_controller.dart';
import 'camel_water_source_radio_controller.dart';
import 'camel_workers_cloths_radio_controller.dart';

class CamelHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(CamelCleanVehiclesRadioController());
  CamelCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(CamelCleanVisitorRadioController());
  CamelVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(CamelVisitorClothsRadioController());
  CamelWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(CamelWorkersClothsRadioController());

  CamelWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(CamelWaterSourceRadioController());
  CamelGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(CamelGoodSanitationRadioController());
  CamelTreatedRadioController camelTreatedRadioCtrl =
      Get.put(CamelTreatedRadioController());
  CamelHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(CamelHealthPractciesTextFieldController());
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
    if (cleanVehiclesRadioCtrl.charcter == CamelCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter == CamelCleanVehiclesRadio.no) {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter ==
        CamelCleanVehiclesRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 352, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelTreatedRadioCtrl.charcter == CamelTreatedRadio.yes) {
      sendDataCtrl.addAnswer(id: 292, answer: "");
    } else if (camelTreatedRadioCtrl.charcter == CamelTreatedRadio.no) {
      sendDataCtrl.addAnswer(id: 293, answer: "");
    } else if (camelTreatedRadioCtrl.charcter == CamelTreatedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 401, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == CamelCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter == CamelCleanVisitorRadio.no) {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter ==
        CamelCleanVisitorRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 353, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == CamelVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else if (visitorClothsRadioCtrl.charcter == CamelVisitorClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    } else if (visitorClothsRadioCtrl.charcter ==
        CamelVisitorClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 354, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == CamelWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else if (workersClothsRadioCtrl.charcter == CamelWorkersClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    } else if (workersClothsRadioCtrl.charcter ==
        CamelWorkersClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 355, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == CamelWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        CamelWaterSourceRadio.untreated) {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        CamelWaterSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 356, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == CamelGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        CamelGoodSanitationRadio.no) {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        CamelGoodSanitationRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 357, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    log("physical data : ${sendDataCtrl.answers}");
    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCamelStatusValue(6);

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
