import 'package:get/get.dart';

enum HorseFloorCleanedRadio { yes, no,noAnswer }

class HorseFloorCleanedRadioController extends GetxController {
  HorseFloorCleanedRadio charcter = HorseFloorCleanedRadio.noAnswer;

  void onChange(HorseFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
