import 'package:get/get.dart';

enum SheepSanitizersUsedRadio { yes, no,noAnswer }

class SheepSanitizersUsedRadioController extends GetxController {
  SheepSanitizersUsedRadio charcter = SheepSanitizersUsedRadio.noAnswer;

  void onChange(SheepSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

