

import 'package:get/get.dart';

enum GoatBarnUmberella { yes, no,noAnswer }

class GoatBarnUmberellaController extends GetxController {
  GoatBarnUmberella charcter = GoatBarnUmberella.noAnswer;

  void onChange(GoatBarnUmberella value) {
    charcter = value;
    update();
  }
}
