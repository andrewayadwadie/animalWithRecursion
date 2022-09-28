
import 'package:get/get.dart';

enum HorseMilkerToolsCleanedRadio { yes, no,noAnswer }

class HorseMilkerToolsCleanedRadioController extends GetxController {
  HorseMilkerToolsCleanedRadio charcter = HorseMilkerToolsCleanedRadio.noAnswer;

  void onChange(HorseMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
