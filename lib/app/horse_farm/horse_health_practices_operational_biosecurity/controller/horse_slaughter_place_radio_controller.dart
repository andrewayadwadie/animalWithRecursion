
import 'package:get/get.dart';

enum HorseSlaughterPlacerRadio { yes, no,noAnswer }

class HorseSlaughterPlacerRadioController extends GetxController {
  HorseSlaughterPlacerRadio charcter = HorseSlaughterPlacerRadio.noAnswer;

  void onChange(HorseSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
