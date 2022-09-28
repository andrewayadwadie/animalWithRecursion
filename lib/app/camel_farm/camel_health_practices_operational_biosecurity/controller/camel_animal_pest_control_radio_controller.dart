import 'package:get/get.dart';

enum CamelInsectAnimalPestControlRadio { yes, no,noAnswer }

class CamelInsectAnimalPestControlRadioController extends GetxController {
  CamelInsectAnimalPestControlRadio charcter =
      CamelInsectAnimalPestControlRadio.noAnswer;

  void onChange(CamelInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
