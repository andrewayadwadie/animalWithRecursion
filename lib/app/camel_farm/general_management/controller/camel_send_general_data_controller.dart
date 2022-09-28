import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../service/camel_send_general_data_service.dart';
import 'camel_another_animal_type_controller.dart';
import 'camel_defenation_radio_controller.dart';
import 'camel_distance_movement_controller.dart';
import 'camel_exist_animal_controller.dart';
import 'camel_general_checkbox_controller.dart';
import 'camel_move_outside_radio_controller.dart';
import 'camel_move_outsite_check_controller.dart';
import 'camel_move_times_check_controller.dart';
import 'camel_new_animal_bought_radio_controller.dart';
import 'camel_reason_buying_new_animal_controller.dart';
import 'camel_record_radio_controller.dart';
import 'camel_send_camel_herd_data_controller.dart';
import 'camel_source_buy_animal_controller.dart';
import 'camel_textfield_controller.dart';
import 'camel_time_buy_animal_controller.dart';
import 'mix_checkbox_controller.dart';
import 'mix_with_animals_controller.dart';
import 'wild_radio_controller.dart';

class CamelGeneralSendDataController extends GetxController {
  ClickController click = Get.find<ClickController>();
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelDefenationController camelDefenationCtrl =
      Get.put(CamelDefenationController());
  CamelGeneralCheckboxController record =
      Get.put(CamelGeneralCheckboxController(choices: [
    "animal identification record", //? push in api object with id 4
    "census record", //? push in api object with id 5
    "production record", //? push in api object with id 6
    "sick record", //? push in api object with id 7
    "treatments", //? push in api object with id 8
    "record of fortifications", //? push in api object with id 9
    "log visits"
  ]));
  CamelWildController wildCtrl = Get.put(CamelWildController());
  CamelMixCheckboxController mixcheck =
      Get.put(CamelMixCheckboxController(choices: [
    "vaccination campaigns", //? push in api object with id 13
    "veterinary clinics", //? push in api object with id 14
    "markets", //? push in api object with id 15
    "Race", //? push in api object with id 16
    "other", //? push in api object with id 17
  ]));

  CamelMoveOutsideController moveCtrl = Get.put(CamelMoveOutsideController());

  CamelMoveCheckboxController moveCheck =
      Get.put(CamelMoveCheckboxController(choices: [
    "Markets", //? push in api object with id 20
    "massacres", //? push in api object with id 21
    "veterinary clinics", //? push in api object with id 22
    "Race", //? push in api object with id 23
    "Export", //? push in api object with id 24
    "other", //? push in api object with id 25
  ]));

  CamelMoveTimesCheckboxController moveTimesCtrl =
      Get.put(CamelMoveTimesCheckboxController(choices: [
    'Throughout the year', //? push in api object with id 26
    "seasonal", //? push in api object with id 27
  ]));

  CamelDistanceMovementController distanceMovementCtrl =
      Get.put(CamelDistanceMovementController());
  CamelNewAnimalBoughtController newanimal =
      Get.put(CamelNewAnimalBoughtController());

  CamelreasonBuyingNewanimalController reasonBuyingNewanimalCtrl =
      Get.put(CamelreasonBuyingNewanimalController());
  CamelTimesBuyingNewanimalController timesBuyingNewanimalCtrl =
      Get.put(CamelTimesBuyingNewanimalController());

  CamelSourcesBuyingNewanimalController sourceNewId =
      Get.put(CamelSourcesBuyingNewanimalController());
  CamelRecordController recordCtrl = Get.put(CamelRecordController());

  DateController dateCtrl = Get.put(DateController());

  CamelTextFieldController textCtrl = Get.put(CamelTextFieldController());

  CamelWithAnimalsController withAnimalsCtrl =
      Get.put(CamelWithAnimalsController());

  CamelAnimalExistController animalExistCtrl =
      Get.put(CamelAnimalExistController());
  AnotherAnimalController anotherAnimalCtrl =
      Get.put(AnotherAnimalController());

  void fillAnswerListWithData() {
    sendDataCtrl.addAnswer(id: anotherAnimalCtrl.animalTypeId, answer: "");
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 1, answer: textCtrl.workersNo);

    sendDataCtrl.addAnswer(id: 45, answer: textCtrl.animalCount);

    //!--------------------------
    //* Radio button
    if (camelDefenationCtrl.charcter == CamelDefenation.yes) {
      sendDataCtrl.addAnswer(id: 2, answer: "");
    } else if (camelDefenationCtrl.charcter == CamelDefenation.no) {
      sendDataCtrl.addAnswer(id: 3, answer: "");
    } else if (camelDefenationCtrl.charcter == CamelDefenation.noAnswer) {
      sendDataCtrl.addAnswer(id: 310, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (recordCtrl.charcter == CamelRecord.yes) {
      sendDataCtrl.addAnswer(id: 405, answer: "");
    } else if (recordCtrl.charcter == CamelRecord.no) {
      sendDataCtrl.addAnswer(id: 406, answer: "");
    } else if (recordCtrl.charcter == CamelRecord.noAnswer) {
      sendDataCtrl.addAnswer(id: 407, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (withAnimalsCtrl.charcter == CamelWithAnimals.yes) {
      sendDataCtrl.addAnswer(id: 408, answer: "");
    } else if (withAnimalsCtrl.charcter == CamelWithAnimals.no) {
      sendDataCtrl.addAnswer(id: 409, answer: "");
    } else if (withAnimalsCtrl.charcter == CamelWithAnimals.noAnswer) {
      sendDataCtrl.addAnswer(id: 410, answer: "");
    }
//!--------------------------
    //* Radio button
    if (animalExistCtrl.charcter == CamelAnimalExist.yes) {
      sendDataCtrl.addAnswer(id: 441, answer: "");
    } else if (animalExistCtrl.charcter == CamelAnimalExist.no) {
      sendDataCtrl.addAnswer(id: 442, answer: "");
    } else if (animalExistCtrl.charcter == CamelAnimalExist.noAnswer) {
      sendDataCtrl.addAnswer(id: 443, answer: "");
    }
    //!--------------------------
    //*check box
    if (record.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 4, answer: "");
    }
    if (record.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 5, answer: "");
    }
    if (record.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 6, answer: "");
    }
    if (record.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 7, answer: "");
    }
    if (record.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 8, answer: "");
    }
    if (record.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 9, answer: "");
    }

    if (record.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 10, answer: "");
    }
    if (record.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 311, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (wildCtrl.charcter == CamelWild.yes) {
      sendDataCtrl.addAnswer(id: 11, answer: "");
    } else if (wildCtrl.charcter == CamelWild.no) {
      sendDataCtrl.addAnswer(id: 12, answer: "");
    } else if (wildCtrl.charcter == CamelWild.noAnswer) {
      sendDataCtrl.addAnswer(id: 312, answer: "");
    }

    //!--------------------------
    //*check box
    if (mixcheck.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 13, answer: "");
    }

    if (mixcheck.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 14, answer: "");
    }

    if (mixcheck.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 15, answer: "");
    }
    if (mixcheck.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 16, answer: "");
    }
    if (mixcheck.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 17, answer: "");
    }
    if (mixcheck.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 313, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (moveCtrl.charcter == CamelMoveOutside.yes) {
      sendDataCtrl.addAnswer(id: 18, answer: "");
    } else if (moveCtrl.charcter == CamelMoveOutside.no) {
      sendDataCtrl.addAnswer(id: 19, answer: "");
    } else if (moveCtrl.charcter == CamelMoveOutside.noAnswer) {
      sendDataCtrl.addAnswer(id: 314, answer: "");
    }
    //!--------------------------
    //*check box
    if (moveCheck.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 20, answer: "");
    }
    if (moveCheck.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 21, answer: "");
    }
    if (moveCheck.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 22, answer: "");
    }
    if (moveCheck.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 23, answer: "");
    }
    if (moveCheck.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 24, answer: "");
    }
    if (moveCheck.choicesBoolList[5] == true) {}
    if (moveCheck.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 315, answer: "");
    }
    //!--------------------------
    //*check box
    if (moveTimesCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 26, answer: "");
    }
    if (moveTimesCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 27, answer: "");
    }
    if (moveTimesCtrl.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 316, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (distanceMovementCtrl.distanceId.value == 1) {
      sendDataCtrl.addAnswer(id: 28, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 2) {
      sendDataCtrl.addAnswer(id: 29, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 3) {
      sendDataCtrl.addAnswer(id: 30, answer: "");
    }
    if (distanceMovementCtrl.distanceText.value == 'Camel distance movement') {
      sendDataCtrl.addAnswer(id: 317, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (newanimal.charcter == CamelNewAnimalBought.yes) {
      sendDataCtrl.addAnswer(id: 31, answer: "");
    } else if (newanimal.charcter == CamelNewAnimalBought.no) {
      sendDataCtrl.addAnswer(id: 32, answer: "");
    } else if (newanimal.charcter == CamelNewAnimalBought.noAnswer) {
      sendDataCtrl.addAnswer(id: 318, answer: "");
    }

    //!--------------------------
    //*dropdown
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 33, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 34, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 35, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewText.value ==
        'reason to buy New animal') {
      sendDataCtrl.addAnswer(id: 319, answer: "");
    }
    //????????????????????????????????????????????????????????????????????
    //!--------------------------
    //*dropdown
    if (timesBuyingNewanimalCtrl.timesNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 36, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 37, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 38, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 4) {
      sendDataCtrl.addAnswer(id: 39, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewText.value ==
        'What are the times to buy animals?') {
      sendDataCtrl.addAnswer(id: 320, answer: "");
    }
    //!--------------------------
    //*dropdown
    if (sourceNewId.sourceNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 40, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 41, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 42, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 4) {
      sendDataCtrl.addAnswer(id: 43, answer: "");
    }
    if (sourceNewId.sourceNewText.value ==
        'What are the sources of animal purchase?') {
      sendDataCtrl.addAnswer(id: 321, answer: "");
    }
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 44,
        answer: dateCtrl.date.year == DateTime.now().year &&
                dateCtrl.date.month == DateTime.now().month &&
                dateCtrl.date.day == DateTime.now().day
            ? ""
            : "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");
    //!--------------------------
  }

  void sendData(BuildContext context) async {
    log("Answer Data ${sendDataCtrl.answers}");
    log("anotherAnimalCtrl.animalTypeId ${anotherAnimalCtrl.animalTypeId}");
    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCamelStatusValue(1);

      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      sendDataCtrl.answers.clear();
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      sendDataCtrl.answers.clear();
      log("error : $res ");
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
      click.changeCamelGeneralClick();
    } else if (res.runtimeType == String) {
      log("error : $res ");
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
      click.changeCamelGeneralClick();
    }
  }
}
