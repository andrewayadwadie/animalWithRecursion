import 'package:get/get.dart';

enum SheepFeederrCleanedRadio { yes, no,noAnswer }

class SheepFeederrCleanedRadioController extends GetxController {
  SheepFeederrCleanedRadio charcter = SheepFeederrCleanedRadio.noAnswer;

  void onChange(SheepFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
