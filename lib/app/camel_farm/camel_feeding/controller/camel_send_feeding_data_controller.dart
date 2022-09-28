import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../general_management/service/camel_send_general_data_service.dart';
import 'camel_blended_checkbox_controller.dart';
import 'camel_feed_type_checkbox_controller.dart';
import 'camel_feeding_date_controller.dart';
import 'camel_feeding_textfield_controller.dart';
import 'camel_fooder_radio_controller.dart';
import 'camel_rodents_radio_controller.dart';
import 'camel_salt_bars_radio_controller.dart';
import 'camel_storage_appropriate_radio_controller.dart';
import 'camel_synthetic_blended_radio_controller.dart';

class CamelFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelFeedingDateController dateCtrl = Get.put(CamelFeedingDateController());
  CamelSyntheticBlendedRadioController camelSyntheticBlendedRadioCtrl =
      Get.put(CamelSyntheticBlendedRadioController());

  CamelFeedTypeCheckboxController feedTypeCtrl =
      Get.put(CamelFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));
  CamelblendedCheckboxController camelblendedCheckboxCtrl =
      Get.put(CamelblendedCheckboxController(choices: [
    "Anti-fungal",
    "salts or vitamins",
  ]));

  CamelFooderRadioController fooderCtrl = Get.put(CamelFooderRadioController());
  CamelStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(CamelStorageAppropriateRadioController());

  CamelrodentsRadioController camelrodentsCtrl =
      Get.put(CamelrodentsRadioController());

  CamelSaltBarsRadioController camelSaltBarsCtrl =
      Get.put(CamelSaltBarsRadioController());
  CamelFeedingTextfieldController textfieldCtrl =
      Get.put(CamelFeedingTextfieldController());
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
    if (camelblendedCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 284, answer: "");
    }
    if (camelblendedCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 285, answer: "");
    }
    if (camelblendedCheckboxCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 399, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelSyntheticBlendedRadioCtrl.charcter ==
        CamelSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else if (camelSyntheticBlendedRadioCtrl.charcter ==
        CamelSyntheticBlendedRadio.synthetic) {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    } else if (camelSyntheticBlendedRadioCtrl.charcter ==
        CamelSyntheticBlendedRadio.noAnswer) {
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
    if (fooderCtrl.charcter == CamelFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else if (fooderCtrl.charcter == CamelFooderRadio.no) {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    } else if (fooderCtrl.charcter == CamelFooderRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 335, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == CamelStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        CamelStorageAppropriateRadio.no) {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        CamelStorageAppropriateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 336, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelrodentsCtrl.charcter == CamelrodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else if (camelrodentsCtrl.charcter == CamelrodentsRadio.no) {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    } else if (camelrodentsCtrl.charcter == CamelrodentsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 337, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelSaltBarsCtrl.charcter == CamelSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else if (camelSaltBarsCtrl.charcter == CamelSaltBarsRadio.no) {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    } else if (camelSaltBarsCtrl.charcter == CamelSaltBarsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 338, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    log("feeding answer : ${sendDataCtrl.answers}");

    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCamelStatusValue(3);

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
