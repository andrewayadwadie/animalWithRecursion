import 'package:get/get.dart';

enum SheepSickCaseRadio { yes, no,noAnswer }

class SheepSickCaseRadioController extends GetxController {
  SheepSickCaseRadio charcter =
      SheepSickCaseRadio.noAnswer;

  void onChange(SheepSickCaseRadio value) {
    charcter = value;
    update();
  }
}
