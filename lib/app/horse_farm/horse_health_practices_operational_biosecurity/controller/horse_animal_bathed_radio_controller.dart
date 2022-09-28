import 'package:get/get.dart';

enum HorseAnimalBathedRadio { yes, no,noAnswer }

class HorseAnimalBathedRadioController extends GetxController {
  HorseAnimalBathedRadio charcter = HorseAnimalBathedRadio.noAnswer;

  void onChange(HorseAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

