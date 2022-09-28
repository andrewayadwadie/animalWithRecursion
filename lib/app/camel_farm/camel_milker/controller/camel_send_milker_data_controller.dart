import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../general_management/service/camel_send_general_data_service.dart';
import 'camel_milker_building_radio_controller.dart';
import 'camel_milker_building_type_radio_controller.dart';
import 'camel_milker_place_radio_controller.dart';
import 'camel_milker_textfield_controller.dart';
import 'camel_milker_type_controller.dart';

class CamelSendMilkerDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelMilkerTypeController milkerTypeCtrl =
      Get.put(CamelMilkerTypeController());
  CamelMilkerPlaceRadioController milkerPlaceCtrl =
      Get.put(CamelMilkerPlaceRadioController());

  CamelMilkerBuildingRadioController milkerBuildingCtrl =
      Get.put(CamelMilkerBuildingRadioController());
  CamelMilkerBuildingTypeRadioController milkerBuildingTypeCtrl =
      Get.put(CamelMilkerBuildingTypeRadioController());

  CamelMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(CamelMilkerTextFieldController());
  void fillAnswerListWithData() {
//!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 124, answer: milkerTextFieldCtrl.milkingTimeNo);

    //* dropdown
    if (milkerTypeCtrl.milkerTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 121, answer: "");
    }
    if (milkerTypeCtrl.milkerTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 122, answer: "");
    }
    if (milkerTypeCtrl.milkerTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 123, answer: "");
    }
    if (milkerTypeCtrl.milkerTypeText.value == 'What type of milker?') {
      sendDataCtrl.addAnswer(id: 348, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 125, answer: "");
    } else if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 126, answer: "");
    } else if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 349, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingCtrl.charcter ==
        CamelMilkerBuildingRadio.milkerBuilding) {
      sendDataCtrl.addAnswer(id: 127, answer: "");
    } else if (milkerBuildingCtrl.charcter == CamelMilkerBuildingRadio.barn) {
      sendDataCtrl.addAnswer(id: 128, answer: "");
    } else if (milkerBuildingCtrl.charcter ==
        CamelMilkerBuildingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 350, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingTypeCtrl.charcter ==
        CamelMilkerBuildingTypeRadio.fullyClosed) {
      sendDataCtrl.addAnswer(id: 129, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        CamelMilkerBuildingTypeRadio.halfWallWithCanopy) {
      sendDataCtrl.addAnswer(id: 130, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        CamelMilkerBuildingTypeRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 351, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    log("Milker ${sendDataCtrl.answers}");

    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCamelStatusValue(5);

     Get.offAll(() => AllSectionScreen(animalId: SharedPreferencesHelper.getAnimalTypeValue(),));
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
