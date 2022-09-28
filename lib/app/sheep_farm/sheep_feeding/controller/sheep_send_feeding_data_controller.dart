import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import 'sheep_blended_checkbox_controller.dart';
import 'sheep_feed_type_checkbox_controller.dart';
import 'sheep_feeding_date_controller.dart';
import 'sheep_feeding_textfield_controller.dart';
import 'sheep_fooder_radio_controller.dart';
import 'sheep_rodents_radio_controller.dart';
import 'sheep_salt_bars_radio_controller.dart';
import 'sheep_storage_appropriate_radio_controller.dart';
import 'sheep_synthetic_blended_radio_controller.dart';

class SheepFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());
  SheepFeedingDateController dateCtrl = Get.put(SheepFeedingDateController());
  SheepSyntheticBlendedRadioController syntheticBlendedRadioCtrl =
      Get.put(SheepSyntheticBlendedRadioController());

  SheepFeedTypeCheckboxController feedTypeCtrl =
      Get.put(SheepFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));
  SheepblendedCheckboxController blendedCheckboxCtrl =
      Get.put(SheepblendedCheckboxController(choices: [
    "Anti-fungal",
    "salts or vitamins",
  ]));

  SheepFooderRadioController fooderCtrl = Get.put(SheepFooderRadioController());
  SheepStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(SheepStorageAppropriateRadioController());

  SheeprodentsRadioController rodentsCtrl =
      Get.put(SheeprodentsRadioController());

  SheepSaltBarsRadioController saltBarsCtrl =
      Get.put(SheepSaltBarsRadioController());
  SheepFeedingTextfieldController textfieldCtrl =
      Get.put(SheepFeedingTextfieldController());
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
        SheepSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        SheepSyntheticBlendedRadio.synthetic) {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        SheepSyntheticBlendedRadio.noAnswer) {
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
    if (fooderCtrl.charcter == SheepFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else if (fooderCtrl.charcter == SheepFooderRadio.no) {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    } else if (fooderCtrl.charcter == SheepFooderRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 335, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == SheepStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        SheepStorageAppropriateRadio.no) {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        SheepStorageAppropriateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 336, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (rodentsCtrl.charcter == SheeprodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else if (rodentsCtrl.charcter == SheeprodentsRadio.no) {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    } else if (rodentsCtrl.charcter == SheeprodentsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 337, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (saltBarsCtrl.charcter == SheepSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else if (saltBarsCtrl.charcter == SheepSaltBarsRadio.no) {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    } else if (saltBarsCtrl.charcter == SheepSaltBarsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 338, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setSheepStatusValue(3);

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
