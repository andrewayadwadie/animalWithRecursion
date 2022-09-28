import 'package:get/get.dart';

enum GoatGoodSanitationRadio { yes, no ,noAnswer}

class GoatGoodSanitationRadioController extends GetxController {
  GoatGoodSanitationRadio charcter = GoatGoodSanitationRadio.noAnswer;

  void onChange(GoatGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
