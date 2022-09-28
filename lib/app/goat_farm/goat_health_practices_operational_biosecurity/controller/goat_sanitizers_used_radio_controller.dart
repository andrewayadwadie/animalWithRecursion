import 'package:get/get.dart';

enum GoatSanitizersUsedRadio { yes, no,noAnswer }

class GoatSanitizersUsedRadioController extends GetxController {
  GoatSanitizersUsedRadio charcter = GoatSanitizersUsedRadio.noAnswer;

  void onChange(GoatSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

