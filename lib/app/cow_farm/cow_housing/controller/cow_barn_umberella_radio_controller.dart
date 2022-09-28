

import 'package:get/get.dart';

enum CowBarnUmberella { yes, no,noAnswer }

class CowBarnUmberellaController extends GetxController {
  CowBarnUmberella charcter = CowBarnUmberella.noAnswer;

  void onChange(CowBarnUmberella value) {
    charcter = value;
    update();
  }
}
