
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../model/cow_add_model.dart';
import '../service/cow_send_symptoms_service.dart';
import 'cow_get_image_list_controller.dart';
import 'cow_get_symptoms_controller.dart';

class CowSendSymptomsController extends GetxController {
  CowGetSymptomsController symptomsCtrl = Get.put(CowGetSymptomsController());
  CowGetImageListData imageListCtrl = Get.put(CowGetImageListData());
  void sendSymptoms(BuildContext context) async {
    List<CowAddModel> allData = [];
    for (var i = 0; i < symptomsCtrl.symptoms.length; i++) {
      allData.add(CowAddModel(
        count: symptomsCtrl.textEditCtrl[i].text,
        note: symptomsCtrl.noteTextEditCtrl[i].text,
        syndromeId: symptomsCtrl.symptoms[i].id.toString(),
        photos: imageListCtrl.allImagesList[i],
      ));
    }

    var res = await CowSendSymptomsService.cowSendSymptomsService(
      allData: allData,
    );

    if (res.runtimeType == String) {
      SharedPreferencesHelper.setCowStatusValue(12);
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
