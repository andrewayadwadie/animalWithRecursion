import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../goat_general_management/service/goat_send_general_data_service.dart';
import 'goat_blended_checkbox_controller.dart';
import 'goat_feed_type_checkbox_controller.dart';
import 'goat_feeding_date_controller.dart';
import 'goat_feeding_textfield_controller.dart';
import 'goat_fooder_radio_controller.dart';
import 'goat_rodents_radio_controller.dart';
import 'goat_salt_bars_radio_controller.dart';
import 'goat_storage_appropriate_radio_controller.dart';
import 'goat_synthetic_blended_radio_controller.dart';

class GoatFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendGoatHerdDataController sendDataCtrl =
      Get.put(SendGoatHerdDataController());
  GoatFeedingDateController dateCtrl = Get.put(GoatFeedingDateController());
  GoatSyntheticBlendedRadioController syntheticBlendedRadioCtrl =
      Get.put(GoatSyntheticBlendedRadioController());

  GoatFeedTypeCheckboxController feedTypeCtrl =
      Get.put(GoatFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));
  GoatblendedCheckboxController blendedCheckboxCtrl =
      Get.put(GoatblendedCheckboxController(choices: [
    "Anti-fungal",
    "salts or vitamins",
  ]));

  GoatFooderRadioController fooderCtrl = Get.put(GoatFooderRadioController());
  GoatStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(GoatStorageAppropriateRadioController());

  GoatrodentsRadioController rodentsCtrl =
      Get.put(GoatrodentsRadioController());

  GoatSaltBarsRadioController saltBarsCtrl =
      Get.put(GoatSaltBarsRadioController());
  GoatFeedingTextfieldController textfieldCtrl =
      Get.put(GoatFeedingTextfieldController());
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
        GoatSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        GoatSyntheticBlendedRadio.synthetic) {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    } else if (syntheticBlendedRadioCtrl.charcter ==
        GoatSyntheticBlendedRadio.noAnswer) {
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
    if (fooderCtrl.charcter == GoatFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else if (fooderCtrl.charcter == GoatFooderRadio.no) {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    } else if (fooderCtrl.charcter == GoatFooderRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 335, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == GoatStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        GoatStorageAppropriateRadio.no) {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    } else if (storageAppropriateCtrl.charcter ==
        GoatStorageAppropriateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 336, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (rodentsCtrl.charcter == GoatrodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else if (rodentsCtrl.charcter == GoatrodentsRadio.no) {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    } else if (rodentsCtrl.charcter == GoatrodentsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 337, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (saltBarsCtrl.charcter == GoatSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else if (saltBarsCtrl.charcter == GoatSaltBarsRadio.no) {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    } else if (saltBarsCtrl.charcter == GoatSaltBarsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 338, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendGoatGeneralDataService.sendGoatGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setGoatStatusValue(3);
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
        'Server Error',
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
