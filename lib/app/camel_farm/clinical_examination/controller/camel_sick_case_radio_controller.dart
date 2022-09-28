import 'package:get/get.dart';

enum CamelSickCaseRadio { yes, no,noAnswer }

class CamelSickCaseRadioController extends GetxController {
  CamelSickCaseRadio charcter =
      CamelSickCaseRadio.noAnswer;

  void onChange(CamelSickCaseRadio value) {
    charcter = value;
    update();
  }
}
