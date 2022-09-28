import 'dart:developer';

import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../add_farm_owner/view/screen/farm_owner_screen.dart';
import '../../add_new_farm/view/screen/general_info_screen.dart';
import '../../all_sections/view/screen/all_sections_screen.dart';
import '../../animal_type/view/screen/animal_type_screen.dart';

class HomeBodyController extends GetxController {
  void routeCheck() {
    log("""
        ${SharedPreferencesHelper.getOwnerValue()},
        ${SharedPreferencesHelper.getValue()},
        ${SharedPreferencesHelper.getAnimalTypeValue()},
        ${SharedPreferencesHelper.getCamelHerdValue()},
        ${SharedPreferencesHelper.getCamelStatusValue()}
        """);

    if (SharedPreferencesHelper.getOwnerValue() != 0 &&
        SharedPreferencesHelper.getValue() != 0 &&
        SharedPreferencesHelper.getAnimalTypeValue() != 0) {
      Get.offAll(() => AllSectionScreen(
          animalId: SharedPreferencesHelper.getAnimalTypeValue()));
    } else if (SharedPreferencesHelper.getOwnerValue() != 0 &&
        SharedPreferencesHelper.getValue() != 0) {
      Get.offAll(() => const AnimalTypeScreen());
    } else if (SharedPreferencesHelper.getOwnerValue() != 0) {
      Get.offAll(() => GeneralInfoScreen(
          farmOwnerId: SharedPreferencesHelper.getOwnerValue()));
    } else {
      Get.to(() => FarmOwnerScreen());
    }
  }
}
