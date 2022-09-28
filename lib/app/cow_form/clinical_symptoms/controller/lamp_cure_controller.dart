import 'package:get/get.dart';

enum LampCureExist { yes, no }

class LampCureController extends GetxController {
  LampCureExist charcter = LampCureExist.yes;

  void onChange(LampCureExist value) {
    charcter = value;

    update();
  }
}
