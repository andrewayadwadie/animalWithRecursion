
import 'package:get/get.dart';

enum HorseMilkerCleanedRadio { yes, no ,noAnswer}

class HorseMilkerCleanedRadioController extends GetxController {
  HorseMilkerCleanedRadio charcter = HorseMilkerCleanedRadio.noAnswer;

  void onChange(HorseMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
