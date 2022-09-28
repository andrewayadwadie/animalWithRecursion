import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_blended_checkbox_controller.dart';
import 'horse_feed_type_checkbox_controller.dart';
import 'horse_feeding_date_controller.dart';
import 'horse_feeding_textfield_controller.dart';
import 'horse_fooder_radio_controller.dart';
import 'horse_rodents_radio_controller.dart';
import 'horse_salt_bars_radio_controller.dart';
import 'horse_storage_appropriate_radio_controller.dart';
import 'horse_synthetic_blended_radio_controller.dart';

class HorseFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());
  HorseFeedingDateController dateCtrl = Get.put(HorseFeedingDateController());
  HorseSyntheticBlendedRadioController syntheticBlendedRadioCtrl =
      Get.put(HorseSyntheticBlendedRadioController());

  HorseFeedTypeCheckboxController feedTypeCtrl =
      Get.put(HorseFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));
  HorseblendedCheckboxController blendedCheckboxCtrl =
      Get.put(HorseblendedCheckboxController(choices: [
    "Anti-fungal",
    "salts or vitamins",
  ]));

  HorseFooderRadioController fooderCtrl = Get.put(HorseFooderRadioController());
  HorseStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(HorseStorageAppropriateRadioController());

  HorserodentsRadioController rodentsCtrl =
      Get.put(HorserodentsRadioController());

  HorseSaltBarsRadioController saltBarsCtrl =
      Get.put(HorseSaltBarsRadioController());
  HorseFeedingTextfieldController textfieldCtrl =
      Get.put(HorseFeedingTextfieldController());
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
        HorseSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        HorseSyntheticBlendedRadio.synthetic) {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        HorseSyntheticBlendedRadio.noAnswer) {
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
    if (fooderCtrl.charcter == HorseFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else if (fooderCtrl.charcter == HorseFooderRadio.no) {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    } else if (fooderCtrl.charcter == HorseFooderRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 335, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == HorseStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        HorseStorageAppropriateRadio.no) {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        HorseStorageAppropriateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 336, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (rodentsCtrl.charcter == HorserodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else if (rodentsCtrl.charcter == HorserodentsRadio.no) {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    } else if (rodentsCtrl.charcter == HorserodentsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 337, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (saltBarsCtrl.charcter == HorseSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else if (saltBarsCtrl.charcter == HorseSaltBarsRadio.no) {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    } else if (saltBarsCtrl.charcter == HorseSaltBarsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 338, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(3);

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
