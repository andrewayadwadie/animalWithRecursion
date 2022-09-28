import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatImmunizationNewDoctorController extends GetxController {
  final List list;
  GoatImmunizationNewDoctorController(this.list);
  @override
  void onInit() {
    addList(list);
    super.onInit();
  }

  void addList(List list) {
    for (var i = 0; i < list.length; i++) {
      immunizationNewDoctorText.add('Who administers the immunization?'.tr.obs);
      immunizationNewDoctorId.add(0.obs);
    }
  }

  List<String> immunizationNewDoctorList = [
    "subjective".tr,
    "private vet".tr,
    "Government veterinarian".tr,
    "veterinary technician".tr,
  ];

  List<RxString> immunizationNewDoctorText = [];
  //'Who administers the immunization?'.obs;
  List<RxInt> immunizationNewDoctorId = [];
  //0.obs;

  void onTapSelected(BuildContext con, int id, index, int listIndex) {
    immunizationNewDoctorId[listIndex].value = id;
    Navigator.pop(con);
    immunizationNewDoctorText[listIndex].value =
        immunizationNewDoctorList[index];
    update();
  }
}
