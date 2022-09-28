

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/tools_service.dart';
 

class ToolsController extends GetxController {
  List<dynamic> tools = [].obs;
  final RxBool _loading = true.obs;

  @override
  void onInit() {
    getToolCount();
    super.onInit();
  }

  RxString toolsText = 'choose tool'.tr.obs;

  RxInt toolsId = 0.obs;

  void onTapSelected(BuildContext con, int id,int index) {
    toolsId.value= id;
    Navigator.pop(con);

    toolsText.value = tools[index].name;

    update();
  }

  bool get loading => _loading.value;
  dynamic getToolCount() {
    if (_loading.value == true) {
      ToolsService.getAllTools().then((value) {
        tools = value;
        _loading.value = false;
        update();
      });
    }
    return tools;
  }
}
