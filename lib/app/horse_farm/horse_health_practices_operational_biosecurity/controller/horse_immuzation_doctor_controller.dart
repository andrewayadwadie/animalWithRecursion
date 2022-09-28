import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorseImmuzatioDoctorController extends GetxController {
  List<String> immuzatioDoctorList = [
    "subjective".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  RxString immuzatioDoctorText = 'Who administers the immunization?'.tr.obs;

  RxInt immuzatioDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    immuzatioDoctorId.value = id+1;
    Navigator.pop(con);

    immuzatioDoctorText.value = immuzatioDoctorList[index];

    update();
  }
}
