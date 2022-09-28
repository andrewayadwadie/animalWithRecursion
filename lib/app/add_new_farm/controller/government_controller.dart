import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/government_service.dart';

class GovernmentController extends GetxController {
  List<dynamic> governments = [].obs;
  final RxBool _loading = true.obs;

  @override
  void onInit() {
    getGovernments();
    super.onInit();
  }

  RxString governmentsText = 'Choose Governorate'.tr.obs;

  RxInt governmentsId = 0.obs;

  void onTapSelected(BuildContext con, int id, int index) {
    governmentsId.value = id;
    Navigator.pop(con);

    governmentsText.value = governments[index].name;

    update();
  }

  bool get loading => _loading.value;
  dynamic getGovernments() {
    if (_loading.value == true) {
      GovernmentService.getGovernment().then((value) {
        governments = value;
        _loading.value = false;
        update();
      });
    }
    return governments;
  }
}
