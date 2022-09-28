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
import '../services/sheep_send_herd_data.dart';
import 'sheep_dynasty_controller.dart';
import 'sheep_herd_dynasty_controller.dart';
import 'sheep_herd_form_controller.dart';

class SheepSendHerdDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SheepHerdFormController herdFormCtrl =
      Get.put(SheepHerdFormController(), permanent: true);
  SheepDynastyController dynastyCtrl = Get.put(SheepDynastyController());

  SizeFieldController sizeCtrl = Get.put(SizeFieldController());

  ActivityTypeFieldController activityCtrl =
      Get.put(ActivityTypeFieldController());

  EduSysController eduSysCtrl = Get.put(EduSysController(
      camelHerdId: SharedPreferencesHelper.getAnimalTypeValue()));

  DateController dateCtrl = Get.put(DateController());

  SheepHerdDynastyController dynastyHerdCtrl =
      Get.put(SheepHerdDynastyController(sheepHerdId: 3));

  void sendHerdData(BuildContext context) async {
    var res = await SendSheepHerdData.sendSheepHerdData(
        numberOfAnimals: int.parse(herdFormCtrl.numberOfAnimals),
        numberOfCases: int.parse(herdFormCtrl.numberOfCases),
        numberOfAdults: int.parse(herdFormCtrl.numberOfAdults),
        numberOfVirginity: int.parse(herdFormCtrl.numberOfVirginity),
        numberOfAged: int.parse(herdFormCtrl.numberOfAged),
        numberOfInfant: int.parse(herdFormCtrl.numberOfInfant),
        numberOfAblaction: int.parse(herdFormCtrl.numberOfAblaction),
        numberOfMales: int.parse(herdFormCtrl.numberOfMales),
        numberOfFemales: int.parse(herdFormCtrl.numberOfFemales),
        numberOfDeaths: int.parse(herdFormCtrl.numberOfDeaths),
        numberOfSuddenDeath: int.parse(herdFormCtrl.numberOfSuddenDeath),
        farmId: SharedPreferencesHelper.getValue(),
        eductionSystemId: eduSysCtrl.educationId,
        animalStrainId: dynastyHerdCtrl.dynastyId,
        note: herdFormCtrl.note,
        size: sizeCtrl.sizeText.value,
        activityType: activityCtrl.activityTypeText.value,
        lat: " ${location.currentLat ?? 0.0}",
        long: "${location.currentLong ?? 0.0}",
        dateOfEpidemiologicalSurvey:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
        numberOfAblactionCases:
            int.parse(herdFormCtrl.numberOfAblactionOfCases),
        numberOfAdultsCases: int.parse(herdFormCtrl.numberOfAdultsOfCases),
        numberOfAgedCases: int.parse(herdFormCtrl.numberOfAgedOfCases),
        numberOfFemalesCases: int.parse(herdFormCtrl.numberOfFemalesOfCases),
        numberOfInfantCases: int.parse(herdFormCtrl.numberOfInfantOfCases),
        numberOfMalesCases: int.parse(herdFormCtrl.numberOfMalesOfCases),
        numberOfVirginityCases:
            int.parse(herdFormCtrl.numberOfVirginityOfCases));

    if (res.runtimeType == double) {
      SharedPreferencesHelper.setSheepHerdValue(res.toInt());
      log("Sheep herd response in local storage double ${SharedPreferencesHelper.getSheepHerdValue()}");
      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
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
