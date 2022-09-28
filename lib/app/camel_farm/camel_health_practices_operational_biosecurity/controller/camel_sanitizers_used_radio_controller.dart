import 'package:get/get.dart';

enum CamelSanitizersUsedRadio { yes, no,noAnswer }

class CamelSanitizersUsedRadioController extends GetxController {
  CamelSanitizersUsedRadio charcter = CamelSanitizersUsedRadio.noAnswer;

  void onChange(CamelSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

