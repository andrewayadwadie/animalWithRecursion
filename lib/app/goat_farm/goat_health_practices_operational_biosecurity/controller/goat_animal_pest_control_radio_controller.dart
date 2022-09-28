import 'package:get/get.dart';

enum GoatInsectAnimalPestControlRadio { yes, no,noAnswer }

class GoatInsectAnimalPestControlRadioController extends GetxController {
  GoatInsectAnimalPestControlRadio charcter =
      GoatInsectAnimalPestControlRadio.noAnswer;

  void onChange(GoatInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
