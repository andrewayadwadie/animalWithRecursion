import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../add_new_farm/controller/activity_type_field_controller.dart';
import '../../../add_new_farm/controller/edu_sys_controller.dart';
import '../../../add_new_farm/controller/size_field_controller.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../services/cow_send_herd_data.dart';
import 'cow_dynasty_controller.dart';
import 'cow_herd_dynasty_controller.dart';
import 'cow_herd_form_controller.dart';

class CowSendHerdDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  CowHerdFormController herdFormCtrl =
      Get.put(CowHerdFormController(), permanent: true);
  CowDynastyController dynastyCtrl = Get.put(CowDynastyController());

  SizeFieldController sizeCtrl = Get.put(SizeFieldController());

  ActivityTypeFieldController activityCtrl =
      Get.put(ActivityTypeFieldController());

  EduSysController eduSysCtrl = Get.put(EduSysController(
      camelHerdId: SharedPreferencesHelper.getAnimalTypeValue()));

  DateController dateCtrl = Get.put(DateController());

  CowHerdDynastyController dynastyHerdCtrl =
      Get.put(CowHerdDynastyController(cowHerdId: 1));

  void sendHerdData(BuildContext context) async {
    var res = await SendCowHerdData.sendCowHerdData(
        numberOfAnimals: int.parse(herdFormCtrl.numberOfAnimalsCtrl.text),
        numberOfCases: int.parse(herdFormCtrl.numberOfCasesCtrl.text),
        numberOfAdults: int.parse(herdFormCtrl.numberOfAdultsCtrl.text),
        numberOfVirginity: int.parse(herdFormCtrl.numberOfVirginityCtrl.text),
        numberOfAged: int.parse(herdFormCtrl.numberOfAgedCtrl.text),
        numberOfInfant: int.parse(herdFormCtrl.numberOfInfantCtrl.text),
        numberOfAblaction: int.parse(herdFormCtrl.numberOfAblactionCtrl.text),
        numberOfMales: int.parse(herdFormCtrl.numberOfMalesCtrl.text),
        numberOfFemales: int.parse(herdFormCtrl.numberOfFemalesCtrl.text),
        numberOfDeaths: int.parse(herdFormCtrl.numberOfDeathsCtrl.text),
        numberOfSuddenDeath: int.parse(herdFormCtrl.numberOfSuddenDeathCtrl.text),
        farmId: SharedPreferencesHelper.getValue(),
        eductionSystemId: eduSysCtrl.educationId,
        animalStrainId: dynastyHerdCtrl.dynastyId,
        note: herdFormCtrl.noteCtrl.text,
        size: sizeCtrl.sizeText.value,
        activityType: activityCtrl.activityTypeText.value,
        lat: " ${location.currentLat ?? 0.0}",
        long: "${location.currentLong ?? 0.0}",
        dateOfEpidemiologicalSurvey:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
        numberOfAblactionCases:
            int.parse(herdFormCtrl.numberOfAblactionCtrlOfCases.text),
        numberOfAdultsCases: int.parse(herdFormCtrl.numberOfAdultsCtrlOfCases.text),
        numberOfAgedCases: int.parse(herdFormCtrl.numberOfAgedCtrlOfCases.text),
        numberOfFemalesCases: int.parse(herdFormCtrl.numberOfFemalesCtrlOfCases.text),
        numberOfInfantCases: int.parse(herdFormCtrl.numberOfInfantCtrlOfCases.text),
        numberOfMalesCases: int.parse(herdFormCtrl.numberOfMalesCtrlOfCases.text),
        numberOfVirginityCases:
            int.parse(herdFormCtrl.numberOfVirginityCtrlOfCases.text));

    log("herd ${SharedPreferencesHelper.getCowHerdValue()}");
    if (res.runtimeType == double) {
      SharedPreferencesHelper.setCowHerdValue(res.toInt());

      log("Cow herd response in local storage double ${SharedPreferencesHelper.getCowHerdValue()}");
      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
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
    }
  }
}
