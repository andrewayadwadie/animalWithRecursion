import 'package:get/get.dart';

enum HorseSanitizersUsedRadio { yes, no,noAnswer }

class HorseSanitizersUsedRadioController extends GetxController {
  HorseSanitizersUsedRadio charcter = HorseSanitizersUsedRadio.noAnswer;

  void onChange(HorseSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

