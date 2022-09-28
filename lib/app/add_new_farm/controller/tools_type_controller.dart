import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/tools_type_service.dart';

class ToolsTypeController extends GetxController {
  List<dynamic> toolsType = [].obs;
  final RxBool _loading = true.obs;

  RxString toolsTypeText = 'choose tools Type'.tr.obs;
  RxInt toolsTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    toolsTypeId.value = id;
    Navigator.pop(con);
    toolsTypeText.value = toolsType[index].name;
    update();
  }

  bool get loading => _loading.value;
  dynamic getToolTypeCount({required int toolId}) {
    log("disId : $toolId");

    ToolsTypeService.getToolsType(toolId).then((value) {
      toolsType = value;
      update();
    });
    // }
    return toolsType;
  }
}
