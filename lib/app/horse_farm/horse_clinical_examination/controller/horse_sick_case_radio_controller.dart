import 'package:get/get.dart';

enum HorseSickCaseRadio { yes, no,noAnswer }

class HorseSickCaseRadioController extends GetxController {
  HorseSickCaseRadio charcter =
      HorseSickCaseRadio.noAnswer;

  void onChange(HorseSickCaseRadio value) {
    charcter = value;
    update();
  }
}
