
import 'package:get/get.dart';

enum GoatMilkerToolsCleanedRadio { yes, no,noAnswer }

class GoatMilkerToolsCleanedRadioController extends GetxController {
  GoatMilkerToolsCleanedRadio charcter = GoatMilkerToolsCleanedRadio.noAnswer;

  void onChange(GoatMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
