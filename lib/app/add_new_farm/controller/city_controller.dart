import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/city_service.dart';

class CityController extends GetxController {
  List<dynamic> cities = [].obs;
  final RxBool _loading = true.obs;

  RxString citiesText = 'Choose City'.tr.obs;
  RxInt citiesId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    citiesId.value = id;
    Navigator.pop(con);
    citiesText.value = cities[index].name;
    update();
  }

  bool get loading => _loading.value;
  dynamic getCity({required int government}) {
    CityService.getCity(government).then((value) {
      cities = value;
      update();
    });
    // }
    return cities;
  }
}
