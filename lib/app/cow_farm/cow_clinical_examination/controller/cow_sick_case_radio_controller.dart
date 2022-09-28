import 'package:get/get.dart';

enum CowSickCaseRadio { yes, no,noAnswer }

class CowSickCaseRadioController extends GetxController {
  CowSickCaseRadio charcter =
      CowSickCaseRadio.noAnswer;

  void onChange(CowSickCaseRadio value) {
    charcter = value;
    update();
  }
}
