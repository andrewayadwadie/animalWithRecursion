
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../model/camel_add_model.dart';
import '../service/camel_send_symptoms_service.dart';
import 'camel_get_image_list_controller.dart';
import 'camel_get_symptoms_controller.dart';

class CamelSendSymptomsController extends GetxController {
  CamelGetSymptomsController symptomsCtrl =
      Get.put(CamelGetSymptomsController());
  CamelGetImageListData imageListCtrl = Get.put(CamelGetImageListData());

  void sendSymptoms(BuildContext context) async {
    List<CamelAddModel> allData = [];
    for (var i = 0; i < symptomsCtrl.symptoms.length; i++) {
      allData.add(CamelAddModel(
        count: symptomsCtrl.textEditCtrl[i].text,
        note: symptomsCtrl.noteTextEditCtrl[i].text,
        syndromeId: symptomsCtrl.symptoms[i].id.toString(),
        photos: imageListCtrl.allImagesList[i],
      ));
    }

    var res = await CamelSendSymptomsService.camelSendSymptomsService(
      allData: allData,
    );

    if (res.runtimeType == String) {
      SharedPreferencesHelper.setCamelStatusValue(12);
      /*
      Get.defaultDialog(
        title: "Alert".tr,
        content:   Text("Do You Want to Add Another Herd ?".tr),
        actions: [
          InkWell(
            onTap: () {
              SharedPreferencesHelper.clearCamelHerd();
              SharedPreferencesHelper.clearCowHerd();
              SharedPreferencesHelper.clearSheepHerd();
              SharedPreferencesHelper.clearCamelStatus();
              SharedPreferencesHelper.clearCowStatus();
              SharedPreferencesHelper.clearSheepStatus();
              Get.offAll(() => const AnimalTypeScreen());
            },
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Text(
                  "OK".tr,
                  style:const TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              SharedPreferencesHelper.clearOwner();
              SharedPreferencesHelper.clear();
              SharedPreferencesHelper.clearAnimalType();
              SharedPreferencesHelper.clearCamelHerd();
              SharedPreferencesHelper.clearCowHerd();
              SharedPreferencesHelper.clearSheepHerd();
              SharedPreferencesHelper.clearCamelStatus();
              SharedPreferencesHelper.clearCowStatus();
              SharedPreferencesHelper.clearSheepStatus();
              Get.offAll(() => HomeScreen());
            },
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 3.8,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Text(
                  "No, finish" .tr,
                  style:const TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      );
*/
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
