import 'package:get/get.dart';

enum CowGoodSanitationRadio { yes, no ,noAnswer}

class CowGoodSanitationRadioController extends GetxController {
  CowGoodSanitationRadio charcter = CowGoodSanitationRadio.noAnswer;

  void onChange(CowGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
