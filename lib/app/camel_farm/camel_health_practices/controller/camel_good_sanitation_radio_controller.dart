import 'package:get/get.dart';

enum CamelGoodSanitationRadio { yes, no ,noAnswer}

class CamelGoodSanitationRadioController extends GetxController {
  CamelGoodSanitationRadio charcter = CamelGoodSanitationRadio.noAnswer;

  void onChange(CamelGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
