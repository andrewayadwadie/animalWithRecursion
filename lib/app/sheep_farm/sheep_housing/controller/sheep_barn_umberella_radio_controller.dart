

import 'package:get/get.dart';

enum SheepBarnUmberella { yes, no,noAnswer }

class SheepBarnUmberellaController extends GetxController {
  SheepBarnUmberella charcter = SheepBarnUmberella.noAnswer;

  void onChange(SheepBarnUmberella value) {
    charcter = value;
    update();
  }
}
