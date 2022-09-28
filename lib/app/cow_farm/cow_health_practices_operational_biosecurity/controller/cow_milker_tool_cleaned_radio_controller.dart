
import 'package:get/get.dart';

enum CowMilkerToolsCleanedRadio { yes, no,noAnswer }

class CowMilkerToolsCleanedRadioController extends GetxController {
  CowMilkerToolsCleanedRadio charcter = CowMilkerToolsCleanedRadio.noAnswer;

  void onChange(CowMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
