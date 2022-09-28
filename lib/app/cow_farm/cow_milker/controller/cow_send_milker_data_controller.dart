import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../cow_general_management/service/cow_send_general_data_service.dart';
import 'cow_milker_building_radio_controller.dart';
import 'cow_milker_building_type_radio_controller.dart';
import 'cow_milker_place_radio_controller.dart';
import 'cow_milker_textfield_controller.dart';
import 'cow_milker_type_controller.dart';

class CowSendMilkerDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());
  CowMilkerTypeController milkerTypeCtrl = Get.put(CowMilkerTypeController());
  CowMilkerPlaceRadioController milkerPlaceCtrl =
      Get.put(CowMilkerPlaceRadioController());

  CowMilkerBuildingRadioController milkerBuildingCtrl =
      Get.put(CowMilkerBuildingRadioController());
  CowMilkerBuildingTypeRadioController milkerBuildingTypeCtrl =
      Get.put(CowMilkerBuildingTypeRadioController());

  CowMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(CowMilkerTextFieldController());
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
    if (milkerPlaceCtrl.charcter == CowMilkerPlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 125, answer: "");
    } else if (milkerPlaceCtrl.charcter == CowMilkerPlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 126, answer: "");
    } else if (milkerPlaceCtrl.charcter == CowMilkerPlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 349, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingCtrl.charcter == CowMilkerBuildingRadio.milkerBuilding) {
      sendDataCtrl.addAnswer(id: 127, answer: "");
    } else if (milkerBuildingCtrl.charcter == CowMilkerBuildingRadio.barn) {
      sendDataCtrl.addAnswer(id: 128, answer: "");
    } else if (milkerBuildingCtrl.charcter == CowMilkerBuildingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 350, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingTypeCtrl.charcter ==
        CowMilkerBuildingTypeRadio.fullyClosed) {
      sendDataCtrl.addAnswer(id: 129, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        CowMilkerBuildingTypeRadio.halfWallWithCanopy) {
      sendDataCtrl.addAnswer(id: 130, answer: "");
    } else if (milkerBuildingTypeCtrl.charcter ==
        CowMilkerBuildingTypeRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 351, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(5);

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
