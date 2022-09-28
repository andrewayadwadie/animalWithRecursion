import 'package:get/get.dart';

enum CowInsectAnimalPestControlRadio { yes, no,noAnswer }

class CowInsectAnimalPestControlRadioController extends GetxController {
  CowInsectAnimalPestControlRadio charcter =
      CowInsectAnimalPestControlRadio.noAnswer;

  void onChange(CowInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
