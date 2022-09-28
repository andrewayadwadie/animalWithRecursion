

import 'package:get/get.dart';

enum CamelBarnUmberella { yes, no,noAnswer }

class CamelBarnUmberellaController extends GetxController {
  CamelBarnUmberella charcter = CamelBarnUmberella.noAnswer;

  void onChange(CamelBarnUmberella value) {
    charcter = value;
    update();
  }
}
