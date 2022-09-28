
import 'package:get/get.dart';

enum GoatMilkerCleanedRadio { yes, no ,noAnswer}

class GoatMilkerCleanedRadioController extends GetxController {
  GoatMilkerCleanedRadio charcter = GoatMilkerCleanedRadio.noAnswer;

  void onChange(GoatMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
