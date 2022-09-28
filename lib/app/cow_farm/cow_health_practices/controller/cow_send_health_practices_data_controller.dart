import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../cow_general_management/service/cow_send_general_data_service.dart';
import 'cow_clean_vechicles_radio_controller.dart';
import 'cow_clean_visitor_radio_controller.dart';
import 'cow_good_sanitation_radio_controller.dart';
import 'cow_health_practices_textfield_controller.dart';
import 'cow_treated_radio_controller.dart';
import 'cow_visitor_cloths_radio_controller.dart';
import 'cow_water_source_radio_controller.dart';
import 'cow_workers_cloths_radio_controller.dart';

class CowHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());
  CowCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(CowCleanVehiclesRadioController());
  CowCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(CowCleanVisitorRadioController());
  CowVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(CowVisitorClothsRadioController());
  CowWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(CowWorkersClothsRadioController());

  CowWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(CowWaterSourceRadioController());
  CowGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(CowGoodSanitationRadioController());
  CowTreatedRadioController treatedRadioCtrl =
      Get.put(CowTreatedRadioController());
  CowHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(CowHealthPractciesTextFieldController());
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
    if (cleanVehiclesRadioCtrl.charcter == CowCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter == CowCleanVehiclesRadio.no) {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    } else if (cleanVehiclesRadioCtrl.charcter ==
        CowCleanVehiclesRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 352, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (treatedRadioCtrl.charcter == CowTreatedRadio.yes) {
      sendDataCtrl.addAnswer(id: 292, answer: "");
    } else if (treatedRadioCtrl.charcter == CowTreatedRadio.no) {
      sendDataCtrl.addAnswer(id: 293, answer: "");
    } else if (treatedRadioCtrl.charcter == CowTreatedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 401, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == CowCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter == CowCleanVisitorRadio.no) {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    } else if (cleanVisitorRadioCtrl.charcter ==
        CowCleanVisitorRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 353, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == CowVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else if (visitorClothsRadioCtrl.charcter == CowVisitorClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    } else if (visitorClothsRadioCtrl.charcter ==
        CowVisitorClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 354, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == CowWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else if (workersClothsRadioCtrl.charcter == CowWorkersClothsRadio.no) {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    } else if (workersClothsRadioCtrl.charcter ==
        CowWorkersClothsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 355, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == CowWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else if (waterSourceRadioCtrl.charcter == CowWaterSourceRadio.untreated) {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    } else if (waterSourceRadioCtrl.charcter == CowWaterSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 356, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == CowGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else if (goodSanitationRadioCtrl.charcter == CowGoodSanitationRadio.no) {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    } else if (goodSanitationRadioCtrl.charcter ==
        CowGoodSanitationRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 357, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(6);

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
