import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/area_service.dart';

class AreaController extends GetxController {
  List<dynamic> areas = [].obs;
  final RxBool _loading = true.obs;

  RxString areasText = 'Choose Area'.tr.obs;
  RxInt areasId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    areasId.value = id ;
    Navigator.pop(con);
    areasText.value = areas[index].name;
    update();
  }

  bool get loading => _loading.value;
  dynamic getArea({required int cityId}) {
    AreaService.getArea(cityId).then((value) {
      areas = value;
      update();
    });
    // }
    return areas;
  }
}
