import 'package:get/get.dart';

enum GoatSickCaseRadio { yes, no,noAnswer }

class GoatSickCaseRadioController extends GetxController {
  GoatSickCaseRadio charcter =
      GoatSickCaseRadio.noAnswer;

  void onChange(GoatSickCaseRadio value) {
    charcter = value;
    update();
  }
}
