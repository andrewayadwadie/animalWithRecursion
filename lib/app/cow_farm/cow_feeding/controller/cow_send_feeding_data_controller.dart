import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../cow_general_management/service/cow_send_general_data_service.dart';
import 'cow_blended_checkbox_controller.dart';
import 'cow_feed_type_checkbox_controller.dart';
import 'cow_feeding_date_controller.dart';
import 'cow_feeding_textfield_controller.dart';
import 'cow_fooder_radio_controller.dart';
import 'cow_rodents_radio_controller.dart';
import 'cow_salt_bars_radio_controller.dart';
import 'cow_storage_appropriate_radio_controller.dart';
import 'cow_synthetic_blended_radio_controller.dart';

class CowFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());
  CowFeedingDateController dateCtrl = Get.put(CowFeedingDateController());
  CowSyntheticBlendedRadioController syntheticBlendedRadioCtrl =
      Get.put(CowSyntheticBlendedRadioController());

  CowFeedTypeCheckboxController feedTypeCtrl =
      Get.put(CowFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));
  CowblendedCheckboxController blendedCheckboxCtrl =
      Get.put(CowblendedCheckboxController(choices: [
    "Anti-fungal",
    "salts or vitamins",
  ]));

  CowFooderRadioController fooderCtrl = Get.put(CowFooderRadioController());
  CowStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(CowStorageAppropriateRadioController());

  CowrodentsRadioController rodentsCtrl = Get.put(CowrodentsRadioController());

  CowSaltBarsRadioController saltBarsCtrl =
      Get.put(CowSaltBarsRadioController());
  CowFeedingTextfieldController textfieldCtrl =
      Get.put(CowFeedingTextfieldController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(id: 84, answer: textfieldCtrl.factoryName);
    //!--------------------------
    //*check box
    if (feedTypeCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 78, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 79, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 80, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 81, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 333, answer: "");
    }
    //!--------------------------
    //*check box
    if (blendedCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 284, answer: "");
    }
    if (blendedCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 285, answer: "");
    }
    if (blendedCheckboxCtrl.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 399, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (syntheticBlendedRadioCtrl.charcter ==
        CowSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        CowSyntheticBlendedRadio.synthetic) {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        CowSyntheticBlendedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 334, answer: "");
    }
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 85,
        answer: dateCtrl.date.year == DateTime.now().year &&
                dateCtrl.date.month == DateTime.now().month &&
                dateCtrl.date.day == DateTime.now().day
            ? ""
            : "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");
    //!--------------------------
    //* Radio button
    if (fooderCtrl.charcter == CowFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else if (fooderCtrl.charcter == CowFooderRadio.no) {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    } else if (fooderCtrl.charcter == CowFooderRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 335, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == CowStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        CowStorageAppropriateRadio.no) {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        CowStorageAppropriateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 336, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (rodentsCtrl.charcter == CowrodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else if (rodentsCtrl.charcter == CowrodentsRadio.no) {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    } else if (rodentsCtrl.charcter == CowrodentsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 337, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (saltBarsCtrl.charcter == CowSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else if (saltBarsCtrl.charcter == CowSaltBarsRadio.no) {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    } else if (saltBarsCtrl.charcter == CowSaltBarsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 338, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(3);

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
