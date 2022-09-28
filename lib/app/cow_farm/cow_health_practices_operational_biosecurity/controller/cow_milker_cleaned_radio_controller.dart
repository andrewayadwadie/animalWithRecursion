
import 'package:get/get.dart';

enum CowMilkerCleanedRadio { yes, no ,noAnswer}

class CowMilkerCleanedRadioController extends GetxController {
  CowMilkerCleanedRadio charcter = CowMilkerCleanedRadio.noAnswer;

  void onChange(CowMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
