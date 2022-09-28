import 'package:get/get.dart';

enum CowSanitizersUsedRadio { yes, no,noAnswer }

class CowSanitizersUsedRadioController extends GetxController {
  CowSanitizersUsedRadio charcter = CowSanitizersUsedRadio.noAnswer;

  void onChange(CowSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

