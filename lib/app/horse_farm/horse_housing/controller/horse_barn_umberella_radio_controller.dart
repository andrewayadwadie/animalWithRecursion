

import 'package:get/get.dart';

enum HorseBarnUmberella { yes, no,noAnswer }

class HorseBarnUmberellaController extends GetxController {
  HorseBarnUmberella charcter = HorseBarnUmberella.noAnswer;

  void onChange(HorseBarnUmberella value) {
    charcter = value;
    update();
  }
}
