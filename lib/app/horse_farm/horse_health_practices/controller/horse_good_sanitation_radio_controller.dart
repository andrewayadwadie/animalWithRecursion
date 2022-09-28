import 'package:get/get.dart';

enum HorseGoodSanitationRadio { yes, no ,noAnswer}

class HorseGoodSanitationRadioController extends GetxController {
  HorseGoodSanitationRadio charcter = HorseGoodSanitationRadio.noAnswer;

  void onChange(HorseGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
