import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/horse_dynasty_service.dart';
 

class HorseHerdDynastyController extends GetxController {
  HorseHerdDynastyController({
    required this.horseHerdId,
  });
  List<dynamic> dynasty = [].obs;
  final RxBool _loading = true.obs;
  final int horseHerdId;
  @override
  void onInit() {
    getDynastyCount(horseHerdId);
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
  dynamic getDynastyCount(int horseId) {
    if (_loading.value == true) {
      HorseDynastyService.getHorseDynasty(horseId).then((value) {
        dynasty = value;
        _loading.value = false;
        update();
      });
    }
    return dynasty;
  }
}
