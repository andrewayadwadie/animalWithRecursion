import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import 'sheep_clean_vechicles_radio_controller.dart';
import 'sheep_clean_visitor_radio_controller.dart';
import 'sheep_good_sanitation_radio_controller.dart';
import 'sheep_health_practices_textfield_controller.dart';
import 'sheep_treated_radio_controller.dart';
import 'sheep_visitor_cloths_radio_controller.dart';
import 'sheep_water_source_radio_controller.dart';
import 'sheep_workers_cloths_radio_controller.dart';

class SheepHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());
  SheepCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(SheepCleanVehiclesRadioController());
  SheepCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(SheepCleanVisitorRadioController());
  SheepVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(SheepVisitorClothsRadioController());
  SheepWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(SheepWorkersClothsRadioController());

  SheepWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(SheepWaterSourceRadioController());
  SheepGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(SheepGoodSanitationRadioController());
  SheepTreatedRadioController treatedRadioCtrl =
      Get.put(SheepTreatedRadioController());
  SheepHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(SheepHealthPractciesTextFieldController());
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
    if (cleanVehiclesRadioCtrl.charcter == SheepCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter == SheepCleanVehiclesRadio.no) {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter ==
        SheepCleanVehiclesRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 352, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (treatedRadioCtrl.charcter == SheepTreatedRadio.yes) {
      sendDataCtrl.addAnswer(id: 292, answer: "");
    } else if (treatedRadioCtrl.charcter == SheepTreatedRadio.no) {
      sendDataCtrl.addAnswer(id: 293, answer: "");
    } else if (treatedRadioCtrl.charcter == SheepTreatedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 401, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == SheepCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter == SheepCleanVisitorRadio.no) {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter ==
        SheepCleanVisitorRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 353, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == SheepVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else if (visitorClothsRadioCtrl.charcter == SheepVisitorClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    } else if (visitorClothsRadioCtrl.charcter ==
        SheepVisitorClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 354, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == SheepWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else if (workersClothsRadioCtrl.charcter == SheepWorkersClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    } else if (workersClothsRadioCtrl.charcter ==
        SheepWorkersClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 355, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == SheepWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        SheepWaterSourceRadio.untreated) {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    } else if (waterSourceRadioCtrl.charcter ==
        SheepWaterSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 356, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == SheepGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        SheepGoodSanitationRadio.no) {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        SheepGoodSanitationRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 357, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setSheepStatusValue(6);

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
