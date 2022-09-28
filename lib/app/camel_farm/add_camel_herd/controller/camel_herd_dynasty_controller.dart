import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/camel_dynasty_service.dart';



class CamelHerdDynastyController extends GetxController {
  CamelHerdDynastyController({
    required this.camelHerdId,
  });
  List<dynamic> dynasty = [].obs;
  final RxBool _loading = true.obs;
  final int camelHerdId;
  @override
  void onInit() {
    getDynastyCount(camelHerdId);
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
  dynamic getDynastyCount(int camelId) {
    if (_loading.value == true) {
      CamelDynastyService.getCamelDynasty(camelId).then((value) {
        dynasty = value;
        _loading.value = false;
        update();
      });
    }
    return dynasty;
  }
}
