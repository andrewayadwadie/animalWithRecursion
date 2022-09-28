import 'dart:developer';

import 'package:get/get.dart';

class CowImmunizationProgramRadioController extends GetxController {
  final List list;

  CowImmunizationProgramRadioController(this.list); 
  @override
  void onInit() {
    addImmunizationList( list);
    super.onInit();
    
  }
  List<dynamic> charcter = [];

  void addImmunizationList(List list) {
    for (var i = 0; i < list.length; i++) {
      charcter.add("no");
    
    }
  }

  void onChange(dynamic value, int index) {
    charcter[index] = value;
    log("charcter list is : $charcter");
    update();
  }
}
