
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../model/goat_add_model.dart';
import '../service/goatl_send_symptoms_service.dart';
import 'goat_get_image_list_controller.dart';
import 'goat_get_symptoms_controller.dart';

class GoatSendSymptomsController extends GetxController {
  GoatGetSymptomsController symptomsCtrl = Get.put(GoatGetSymptomsController());
  GoatGetImageListData imageListCtrl = Get.put(GoatGetImageListData());
  void sendSymptoms(BuildContext context) async {
    List<GoatAddModel> allData = [];
    for (var i = 0; i < symptomsCtrl.symptoms.length; i++) {
      allData.add(GoatAddModel(
        count: symptomsCtrl.textEditCtrl[i].text,
        note: symptomsCtrl.noteTextEditCtrl[i].text,
        syndromeId: symptomsCtrl.symptoms[i].id.toString(),
        photos: imageListCtrl.allImagesList[i],
      ));
    }

    var res = await GoatSendSymptomsService.goatSendSymptomsService(
      allData: allData,
    );

    if (res.runtimeType == String) {
      SharedPreferencesHelper.setGoatStatusValue(12);
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
    } else if (res.runtimeType == String) {
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
