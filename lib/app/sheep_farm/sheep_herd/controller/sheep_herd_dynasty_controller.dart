
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/sheep_dynasty_service.dart';
 

class SheepHerdDynastyController extends GetxController {
  SheepHerdDynastyController({
    required this.sheepHerdId,
  });
  List<dynamic> dynasty = [].obs;
  final RxBool _loading = true.obs;
  final int sheepHerdId;
  @override
  void onInit() {
    getDynastyCount(sheepHerdId);
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
  dynamic getDynastyCount(int sheepId) {
    if (_loading.value == true) {
      SheepDynastyService.getSheepDynasty(sheepId).then((value) {
        dynasty = value;
        _loading.value = false;
        update();
      });
    }
    return dynasty;
  }
}
