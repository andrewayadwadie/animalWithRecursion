import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/goat_dynasty_service.dart';
 

class GoatHerdDynastyController extends GetxController {
  GoatHerdDynastyController({
    required this.goatHerdId,
  });
  List<dynamic> dynasty = [].obs;
  final RxBool _loading = true.obs;
  final int goatHerdId;
  @override
  void onInit() {
    getDynastyCount(goatHerdId);
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
  dynamic getDynastyCount(int goatId) {
    if (_loading.value == true) {
      GoatDynastyService.getGoatDynasty(goatId).then((value) {
        dynasty = value;
        _loading.value = false;
        update();
      });
    }
    return dynasty;
  }
}
