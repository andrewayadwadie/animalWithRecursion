import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../service/cow_send_general_data_service.dart';
import 'cow_another_animal_type_controller.dart';
import 'cow_defenation_radio_controller.dart';
import 'cow_distance_movement_controller.dart';
import 'cow_exist_animal_controller.dart';
import 'cow_general_checkbox_controller.dart';
import 'cow_mix_checkbox_controller.dart';
import 'cow_mix_with_animals_controller.dart';
import 'cow_move_outside_radio_controller.dart';
import 'cow_move_outsite_check_controller.dart';
import 'cow_move_times_check_controller.dart';
import 'cow_new_animal_bought_radio_controller.dart';
import 'cow_reason_buying_new_animal_controller.dart';
import 'cow_record_radio_controller.dart';
import 'cow_send_cow_herd_data_controller.dart';
import 'cow_source_buy_animal_controller.dart';
import 'cow_textfield_controller.dart';
import 'cow_time_buy_animal_controller.dart';
import 'cow_wild_radio_controller.dart';

class CowGeneralSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());
  CowDefenationController defenationCtrl = Get.put(CowDefenationController());
  CowGeneralCheckboxController record =
      Get.put(CowGeneralCheckboxController(choices: [
    "animal identification record", //? push in api object with id 4
    "census record", //? push in api object with id 5
    "production record", //? push in api object with id 6
    "sick record", //? push in api object with id 7
    "treatments", //? push in api object with id 8
    "record of fortifications", //? push in api object with id 9
    "log visits"
  ]));
  CowWildController wildCtrl = Get.put(CowWildController());
  CowMixCheckboxController mixcheck =
      Get.put(CowMixCheckboxController(choices: [
    "vaccination campaigns", //? push in api object with id 13
    "veterinary clinics", //? push in api object with id 14
    "markets", //? push in api object with id 15
    "Race", //? push in api object with id 16
    "other", //? push in api object with id 17
  ]));

  CowMoveOutsideController moveCtrl = Get.put(CowMoveOutsideController());

  CowMoveCheckboxController moveCheck =
      Get.put(CowMoveCheckboxController(choices: [
    "Markets", //? push in api object with id 20
    "massacres", //? push in api object with id 21
    "veterinary clinics", //? push in api object with id 22
    "Race", //? push in api object with id 23
    "Export", //? push in api object with id 24
    "other", //? push in api object with id 25
  ]));

  CowMoveTimesCheckboxController moveTimesCtrl =
      Get.put(CowMoveTimesCheckboxController(choices: [
    'Throughout the year', //? push in api object with id 26
    "seasonal", //? push in api object with id 27
  ]));

  CowDistanceMovementController distanceMovementCtrl =
      Get.put(CowDistanceMovementController());
  CowNewAnimalBoughtController newanimal =
      Get.put(CowNewAnimalBoughtController());

  CowreasonBuyingNewanimalController reasonBuyingNewanimalCtrl =
      Get.put(CowreasonBuyingNewanimalController());
  CowTimesBuyingNewanimalController timesBuyingNewanimalCtrl =
      Get.put(CowTimesBuyingNewanimalController());

  CowSourcesBuyingNewanimalController sourceNewId =
      Get.put(CowSourcesBuyingNewanimalController());

  DateController dateCtrl = Get.put(DateController());

  CowTextFieldController textCtrl = Get.put(CowTextFieldController());
  CowRecordController recordCtrl = Get.put(CowRecordController());
  CowWithAnimalsController withAnimalsCtrl =
      Get.put(CowWithAnimalsController());
  CowAnimalExistController animalExistCtrl =
      Get.put(CowAnimalExistController());
  CowAnotherAnimalController anotherAnimalCtrl =
      Get.put(CowAnotherAnimalController());
  void fillAnswerListWithData() {
    sendDataCtrl.addAnswer(id: anotherAnimalCtrl.animalTypeId, answer: "");
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 1, answer: textCtrl.workersNo);

    sendDataCtrl.addAnswer(id: 45, answer: textCtrl.animalCount);

    //!--------------------------
    //* Radio button
    if (defenationCtrl.charcter == CowDefenation.yes) {
      sendDataCtrl.addAnswer(id: 2, answer: "");
    } else if (defenationCtrl.charcter == CowDefenation.no) {
      sendDataCtrl.addAnswer(id: 3, answer: "");
    } else if (defenationCtrl.charcter == CowDefenation.noAnswer) {
      sendDataCtrl.addAnswer(id: 310, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (recordCtrl.charcter == CowRecord.yes) {
      sendDataCtrl.addAnswer(id: 405, answer: "");
    } else if (recordCtrl.charcter == CowRecord.no) {
      sendDataCtrl.addAnswer(id: 406, answer: "");
    } else if (recordCtrl.charcter == CowRecord.noAnswer) {
      sendDataCtrl.addAnswer(id: 407, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (withAnimalsCtrl.charcter == CowWithAnimals.yes) {
      sendDataCtrl.addAnswer(id: 408, answer: "");
    } else if (withAnimalsCtrl.charcter == CowWithAnimals.no) {
      sendDataCtrl.addAnswer(id: 409, answer: "");
    } else if (withAnimalsCtrl.charcter == CowWithAnimals.noAnswer) {
      sendDataCtrl.addAnswer(id: 410, answer: "");
    }
//!--------------------------
    //* Radio button
    if (animalExistCtrl.charcter == CowAnimalExist.yes) {
      sendDataCtrl.addAnswer(id: 441, answer: "");
    } else if (animalExistCtrl.charcter == CowAnimalExist.no) {
      sendDataCtrl.addAnswer(id: 442, answer: "");
    } else if (animalExistCtrl.charcter == CowAnimalExist.noAnswer) {
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
    if (wildCtrl.charcter == CowWild.yes) {
      sendDataCtrl.addAnswer(id: 11, answer: "");
    } else if (wildCtrl.charcter == CowWild.no) {
      sendDataCtrl.addAnswer(id: 12, answer: "");
    } else if (wildCtrl.charcter == CowWild.noAnswer) {
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
    if (moveCtrl.charcter == CowMoveOutside.yes) {
      sendDataCtrl.addAnswer(id: 18, answer: "");
    } else if (moveCtrl.charcter == CowMoveOutside.no) {
      sendDataCtrl.addAnswer(id: 19, answer: "");
    } else if (moveCtrl.charcter == CowMoveOutside.noAnswer) {
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
    if (distanceMovementCtrl.distanceText.value == 'Cow distance movement') {
      sendDataCtrl.addAnswer(id: 317, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (newanimal.charcter == CowNewAnimalBought.yes) {
      sendDataCtrl.addAnswer(id: 31, answer: "");
    } else if (newanimal.charcter == CowNewAnimalBought.no) {
      sendDataCtrl.addAnswer(id: 32, answer: "");
    } else if (newanimal.charcter == CowNewAnimalBought.noAnswer) {
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
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(1);

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
