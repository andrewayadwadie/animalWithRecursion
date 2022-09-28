
import 'package:get/get.dart';

enum SheepMilkerToolsCleanedRadio { yes, no,noAnswer }

class SheepMilkerToolsCleanedRadioController extends GetxController {
  SheepMilkerToolsCleanedRadio charcter = SheepMilkerToolsCleanedRadio.noAnswer;

  void onChange(SheepMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
