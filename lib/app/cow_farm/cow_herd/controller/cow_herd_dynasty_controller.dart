
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/cow_dynasty_service.dart';
 

class CowHerdDynastyController extends GetxController {
  CowHerdDynastyController({
    required this.cowHerdId,
  });
  List<dynamic> dynasty = [].obs;
  final RxBool _loading = true.obs;
  final int cowHerdId;
  @override
  void onInit() {
    getDynastyCount(cowHerdId);
    super.onInit();
  }

  String dynastyText = 'choose dynasty'.tr;

  int dynastyId = 0;

  void onTapSelected(BuildContext con, int id, int index) {
    dynastyId = id;
    Navigator.pop(con);

    dynastyText = dynasty[index].name;

    update();
  }

  bool get loading => _loading.value;
  dynamic getDynastyCount(int cowId) {
    if (_loading.value == true) {
      CowDynastyService.getCowDynasty(cowId).then((value) {
        dynasty = value;
        _loading.value = false;
        update();
      });
    }
    return dynasty;
  }
}
