import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import 'sheep_animal_pens_radio_controller.dart';
import 'sheep_barn_umberella_radio_controller.dart';
import 'sheep_clean_floor_radio_controller.dart';
import 'sheep_clean_watering_radio_controller.dart';
import 'sheep_drinking_radio_controller.dart';
import 'sheep_farm_fence_radio_controller.dart';
import 'sheep_feeding_clean_radio_controller.dart';
import 'sheep_feeding_status_radio_controller.dart';
import 'sheep_fence_broken_or_not_radio_controller.dart';
import 'sheep_housig_floor_type_controller.dart';
import 'sheep_housing_textfield_controller.dart';
import 'sheep_location_feeding_controller.dart';
import 'sheep_watering_location_radio_controlling.dart';

class SheepHousingSendDataController extends GetxController {
  SheepPensRadioController pensRadioCtrl = Get.put(SheepPensRadioController());
  SheepBarnUmberellaController barnUmberellaCtrl =
      Get.put(SheepBarnUmberellaController());
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());
  SheepBrokenFenceController broken = Get.put(SheepBrokenFenceController());
  SheepHousingFloorTypeController floortypeCtrl =
      Get.put(SheepHousingFloorTypeController());

  SheepCleanFloorController cleanFloorCtrl =
      Get.put(SheepCleanFloorController());
  SheepWateringLocationController wateringLocationCtrl =
      Get.put(SheepWateringLocationController());

  SheepCleanWateringController cleanWateringCtrl =
      Get.put(SheepCleanWateringController());
  SheepDinkingRadioController dinkingCtrl =
      Get.put(SheepDinkingRadioController());
  SheepFeedingLocationController feedingLocationCtrl =
      Get.put(SheepFeedingLocationController());
  SheepCleanFeedingController cleanFeedingCtrl =
      Get.put(SheepCleanFeedingController());
  SheepFeedingStausRadioController feedingStatusCtrl =
      Get.put(SheepFeedingStausRadioController());
  SheepHousingTextFieldController textCtrl =
      Get.put(SheepHousingTextFieldController());
  SheepFenceController fenceCtrl = Get.put(SheepFenceController());

  void fillSheepHousingAnswerList() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(id: 48, answer: textCtrl.barnsNo);
    sendDataCtrl.addAnswer(id: 49, answer: textCtrl.barnArea);
    sendDataCtrl.addAnswer(id: 50, answer: textCtrl.animalBarn);
    sendDataCtrl.addAnswer(id: 62, answer: textCtrl.wateringNo);
    sendDataCtrl.addAnswer(id: 69, answer: textCtrl.drinkNo);
    sendDataCtrl.addAnswer(id: 70, answer: textCtrl.feedsNo);
    sendDataCtrl.addAnswer(id: 77, answer: textCtrl.regimenfeedsNo);
    //!--------------------------
    //* Radio button
    if (pensRadioCtrl.charcter == SheepPensRadio.yes) {
      sendDataCtrl.addAnswer(id: 46, answer: "");
    } else if (pensRadioCtrl.charcter == SheepPensRadio.no) {
      sendDataCtrl.addAnswer(id: 47, answer: "");
    } else if (pensRadioCtrl.charcter == SheepPensRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 322, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == SheepBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else if (barnUmberellaCtrl.charcter == SheepBarnUmberella.no) {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    } else if (barnUmberellaCtrl.charcter == SheepBarnUmberella.noAnswer) {
      sendDataCtrl.addAnswer(id: 323, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (fenceCtrl.charcter == SheepFence.yes) {
      sendDataCtrl.addAnswer(id: 420, answer: "");
    } else if (fenceCtrl.charcter == SheepFence.no) {
      sendDataCtrl.addAnswer(id: 421, answer: "");
    } else if (fenceCtrl.charcter == SheepFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 422, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (broken.charcter == SheepBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else if (broken.charcter == SheepBrokenFence.good) {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    } else if (broken.charcter == SheepBrokenFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 324, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (floortypeCtrl.floorTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 55, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 56, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 57, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 58, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 5) {
      sendDataCtrl.addAnswer(id: 59, answer: "");
    }
    if (floortypeCtrl.floorTypeText.value == 'Floor Type') {
      sendDataCtrl.addAnswer(id: 325, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFloorCtrl.charcter == SheepCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else if (cleanFloorCtrl.charcter == SheepCleanFloor.unClean) {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    } else if (cleanFloorCtrl.charcter == SheepCleanFloor.noAnswer) {
      sendDataCtrl.addAnswer(id: 326, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == SheepWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        SheepWateringLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        SheepWateringLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 327, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == SheepCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else if (cleanWateringCtrl.charcter == SheepCleanWatering.unClean) {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    } else if (cleanWateringCtrl.charcter == SheepCleanWatering.noAnswer) {
      sendDataCtrl.addAnswer(id: 328, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == SheepDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else if (dinkingCtrl.charcter == SheepDinkingRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    } else if (dinkingCtrl.charcter == SheepDinkingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 329, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == SheepFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else if (feedingLocationCtrl.charcter == SheepFeedingLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    } else if (feedingLocationCtrl.charcter == SheepFeedingLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 330, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == SheepCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else if (cleanFeedingCtrl.charcter == SheepCleanFeeding.unClean) {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    } else if (cleanFeedingCtrl.charcter == SheepCleanFeeding.noAnswer) {
      sendDataCtrl.addAnswer(id: 331, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingStatusCtrl.charcter == SheepFeedingStausRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else if (feedingStatusCtrl.charcter ==
        SheepFeedingStausRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    } else if (feedingStatusCtrl.charcter == SheepFeedingStausRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 332, answer: "");
    }
  }

  void sendSheepHousingData(BuildContext context) async {
    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setSheepStatusValue(2);

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
    log("message : $res");
  }
}
