import 'package:get/get.dart';

enum GoatInsectExistRadio { yes, no,noAnswer }

class GoatInsectExistRadioController extends GetxController {
  GoatInsectExistRadio charcter = GoatInsectExistRadio.noAnswer;

  void onChange(GoatInsectExistRadio value) {
    charcter = value;
    update();
  }
}
