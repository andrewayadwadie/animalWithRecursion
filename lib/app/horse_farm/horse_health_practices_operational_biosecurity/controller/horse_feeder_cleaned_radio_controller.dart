import 'package:get/get.dart';

enum HorseFeederrCleanedRadio { yes, no,noAnswer }

class HorseFeederrCleanedRadioController extends GetxController {
  HorseFeederrCleanedRadio charcter = HorseFeederrCleanedRadio.noAnswer;

  void onChange(HorseFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
