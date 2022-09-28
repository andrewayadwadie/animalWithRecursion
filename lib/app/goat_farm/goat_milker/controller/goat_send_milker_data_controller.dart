import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../goat_general_management/service/goat_send_general_data_service.dart';
import 'goat_milker_building_radio_controller.dart';
import 'goat_milker_building_type_radio_controller.dart';
import 'goat_milker_place_radio_controller.dart';
import 'goat_milker_textfield_controller.dart';
import 'goat_milker_type_controller.dart';

class GoatSendMilkerDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendGoatHerdDataController sendDataCtrl =
      Get.put(SendGoatHerdDataController());
  GoatMilkerTypeController milkerTypeCtrl = Get.put(GoatMilkerTypeController());
  GoatMilkerPlaceRadioController milkerPlaceCtrl =
      Get.put(GoatMilkerPlaceRadioController());

  GoatMilkerBuildingRadioController milkerBuildingCtrl =
      Get.put(GoatMilkerBuildingRadioController());
  GoatMilkerBuildingTypeRadioController milkerBuildingTypeCtrl =
      Get.put(GoatMilkerBuildingTypeRadioController());

  GoatMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(GoatMilkerTextFieldController());
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
    if (milkerPlaceCtrl.charcter == GoatMilkerPlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 125, answer: "");
    } else if (milkerPlaceCtrl.charcter == GoatMilkerPlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 126, answer: "");
    } else if (milkerPlaceCtrl.charcter == GoatMilkerPlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 349, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingCtrl.charcter == GoatMilkerBuildingRadio.milkerBuilding) {
      sendDataCtrl.addAnswer(id: 127, answer: "");
    } else if (milkerBuildingCtrl.charcter == GoatMilkerBuildingRadio.barn) {
      sendDataCtrl.addAnswer(id: 128, answer: "");
    } else if (milkerBuildingCtrl.charcter ==
        GoatMilkerBuildingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 350, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingTypeCtrl.charcter ==
        GoatMilkerBuildingTypeRadio.fullyClosed) {
      sendDataCtrl.addAnswer(id: 129, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        GoatMilkerBuildingTypeRadio.halfWallWithCanopy) {
      sendDataCtrl.addAnswer(id: 130, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        GoatMilkerBuildingTypeRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 351, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendGoatGeneralDataService.sendGoatGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setGoatStatusValue(5);

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
