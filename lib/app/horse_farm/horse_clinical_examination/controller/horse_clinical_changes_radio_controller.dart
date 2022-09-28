import 'package:get/get.dart';

enum HorseClinicalChangesRadio { yes, no,noAnswer }

class HorseClinicalChangesRadioController extends GetxController {
  HorseClinicalChangesRadio charcter = HorseClinicalChangesRadio.noAnswer;

  void onChange(HorseClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
