import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../cow_general_management/service/cow_send_general_data_service.dart';
import 'cow_animal_pens_radio_controller.dart';
import 'cow_barn_umberella_radio_controller.dart';
import 'cow_clean_floor_radio_controller.dart';
import 'cow_clean_watering_radio_controller.dart';
import 'cow_drinking_radio_controller.dart';
import 'cow_farm_fence_radio_controller.dart';
import 'cow_feeding_clean_radio_controller.dart';
import 'cow_feeding_status_radio_controller.dart';
import 'cow_fence_broken_or_not_radio_controller.dart';
import 'cow_housig_floor_type_controller.dart';
import 'cow_housing_textfield_controller.dart';
import 'cow_location_feeding_controller.dart';
import 'cow_watering_location_radio_controlling.dart';

class CowHousingSendDataController extends GetxController {
  CowPensRadioController pensRadioCtrl = Get.put(CowPensRadioController());
  CowBarnUmberellaController barnUmberellaCtrl =
      Get.put(CowBarnUmberellaController());
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());
  CowBrokenFenceController broken = Get.put(CowBrokenFenceController());
  CowHousingFloorTypeController floortypeCtrl =
      Get.put(CowHousingFloorTypeController());

  CowCleanFloorController cleanFloorCtrl = Get.put(CowCleanFloorController());
  CowWateringLocationController wateringLocationCtrl =
      Get.put(CowWateringLocationController());

  CowCleanWateringController cleanWateringCtrl =
      Get.put(CowCleanWateringController());
  CowDinkingRadioController dinkingCtrl = Get.put(CowDinkingRadioController());
  CowFeedingLocationController feedingLocationCtrl =
      Get.put(CowFeedingLocationController());
  CowCleanFeedingController cleanFeedingCtrl =
      Get.put(CowCleanFeedingController());
  CowFeedingStausRadioController feedingStatusCtrl =
      Get.put(CowFeedingStausRadioController());
  CowHousingTextFieldController textCtrl =
      Get.put(CowHousingTextFieldController());

  CowFenceController fenceCtrl = Get.put(CowFenceController());
  void fillCowHousingAnswerList() {
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
    if (pensRadioCtrl.charcter == CowPensRadio.yes) {
      sendDataCtrl.addAnswer(id: 46, answer: "");
    } else if (pensRadioCtrl.charcter == CowPensRadio.no) {
      sendDataCtrl.addAnswer(id: 47, answer: "");
    } else if (pensRadioCtrl.charcter == CowPensRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 322, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == CowBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else if (barnUmberellaCtrl.charcter == CowBarnUmberella.no) {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    } else if (barnUmberellaCtrl.charcter == CowBarnUmberella.noAnswer) {
      sendDataCtrl.addAnswer(id: 323, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (fenceCtrl.charcter == CowFence.yes) {
      sendDataCtrl.addAnswer(id: 420, answer: "");
    } else if (fenceCtrl.charcter == CowFence.no) {
      sendDataCtrl.addAnswer(id: 421, answer: "");
    } else if (fenceCtrl.charcter == CowFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 422, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (broken.charcter == CowBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else if (broken.charcter == CowBrokenFence.good) {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    } else if (broken.charcter == CowBrokenFence.noAnswer) {
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
    if (cleanFloorCtrl.charcter == CowCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else if (cleanFloorCtrl.charcter == CowCleanFloor.unClean) {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    } else if (cleanFloorCtrl.charcter == CowCleanFloor.noAnswer) {
      sendDataCtrl.addAnswer(id: 326, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == CowWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else if (wateringLocationCtrl.charcter == CowWateringLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    } else if (wateringLocationCtrl.charcter == CowWateringLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 327, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == CowCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else if (cleanWateringCtrl.charcter == CowCleanWatering.unClean) {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    } else if (cleanWateringCtrl.charcter == CowCleanWatering.noAnswer) {
      sendDataCtrl.addAnswer(id: 328, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == CowDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else if (dinkingCtrl.charcter == CowDinkingRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    } else if (dinkingCtrl.charcter == CowDinkingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 329, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == CowFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else if (feedingLocationCtrl.charcter == CowFeedingLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    } else if (feedingLocationCtrl.charcter == CowFeedingLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 330, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == CowCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else if (cleanFeedingCtrl.charcter == CowCleanFeeding.unClean) {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    } else if (cleanFeedingCtrl.charcter == CowCleanFeeding.noAnswer) {
      sendDataCtrl.addAnswer(id: 331, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingStatusCtrl.charcter == CowFeedingStausRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else if (feedingStatusCtrl.charcter ==
        CowFeedingStausRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    } else if (feedingStatusCtrl.charcter == CowFeedingStausRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 332, answer: "");
    }
  }

  void sendCowHousingData(BuildContext context) async {
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(2);

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
    log("message : $res");
  }
}
