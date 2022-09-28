import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../goat_general_management/service/goat_send_general_data_service.dart';
import 'goat_clean_vechicles_radio_controller.dart';
import 'goat_clean_visitor_radio_controller.dart';
import 'goat_good_sanitation_radio_controller.dart';
import 'goat_health_practices_textfield_controller.dart';
import 'goat_treated_radio_controller.dart';
import 'goat_visitor_cloths_radio_controller.dart';
import 'goat_water_source_radio_controller.dart';
import 'goat_workers_cloths_radio_controller.dart';

class GoatHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendGoatHerdDataController sendDataCtrl =
      Get.put(SendGoatHerdDataController());
  GoatCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(GoatCleanVehiclesRadioController());
  GoatCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(GoatCleanVisitorRadioController());
  GoatVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(GoatVisitorClothsRadioController());
  GoatWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(GoatWorkersClothsRadioController());

  GoatWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(GoatWaterSourceRadioController());
  GoatGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(GoatGoodSanitationRadioController());
  GoatTreatedRadioController treatedRadioCtrl =
      Get.put(GoatTreatedRadioController());
  GoatHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(GoatHealthPractciesTextFieldController());
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
    if (cleanVehiclesRadioCtrl.charcter == GoatCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter == GoatCleanVehiclesRadio.no) {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter ==
        GoatCleanVehiclesRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 352, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (treatedRadioCtrl.charcter == GoatTreatedRadio.yes) {
      sendDataCtrl.addAnswer(id: 292, answer: "");
    } else if (treatedRadioCtrl.charcter == GoatTreatedRadio.no) {
      sendDataCtrl.addAnswer(id: 293, answer: "");
    } else if (treatedRadioCtrl.charcter == GoatTreatedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 401, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == GoatCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter == GoatCleanVisitorRadio.no) {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter ==
        GoatCleanVisitorRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 353, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == GoatVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else if (visitorClothsRadioCtrl.charcter == GoatVisitorClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    } else if (visitorClothsRadioCtrl.charcter ==
        GoatVisitorClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 354, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == GoatWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else if (workersClothsRadioCtrl.charcter == GoatWorkersClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    } else if (workersClothsRadioCtrl.charcter ==
        GoatWorkersClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 355, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == GoatWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        GoatWaterSourceRadio.untreated) {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    } else if (waterSourceRadioCtrl.charcter == GoatWaterSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 356, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == GoatGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else if (goodSanitationRadioCtrl.charcter == GoatGoodSanitationRadio.no) {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        GoatGoodSanitationRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 357, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendGoatGeneralDataService.sendGoatGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setGoatStatusValue(6);

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
        'Server Error ',
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
