import 'package:get/get.dart';

enum HorseInsectAnimalPestControlRadio { yes, no,noAnswer }

class HorseInsectAnimalPestControlRadioController extends GetxController {
  HorseInsectAnimalPestControlRadio charcter =
      HorseInsectAnimalPestControlRadio.noAnswer;

  void onChange(HorseInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
