import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/education_system_service.dart';

class EduSysController extends GetxController {
  EduSysController({
    required this.camelHerdId,
  });
  List<dynamic> education = [].obs;
  final RxBool _loading = true.obs;
  final int camelHerdId;
  @override
  void onInit() {
    getEducationCount(camelHerdId);
    super.onInit();
  }

  String educationText = 'choose Education System'.tr;

  int educationId = 0;

  void onTapSelected(BuildContext con, int id, int index) {
    educationId = id;
    Navigator.pop(con);

    educationText = education[index].name;

    update();
  }

  bool get loading => _loading.value;
  dynamic getEducationCount(int camelId) {
    if (_loading.value == true) {
      EduSysService.getFarmType(camelId).then((value) {
        education = value;
        _loading.value = false;
        update();
      });
    }
    return education;
  }
}
