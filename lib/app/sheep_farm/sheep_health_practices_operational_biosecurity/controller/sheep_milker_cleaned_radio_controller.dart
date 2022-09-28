
import 'package:get/get.dart';

enum SheepMilkerCleanedRadio { yes, no ,noAnswer}

class SheepMilkerCleanedRadioController extends GetxController {
  SheepMilkerCleanedRadio charcter = SheepMilkerCleanedRadio.noAnswer;

  void onChange(SheepMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
