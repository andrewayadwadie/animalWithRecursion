import 'package:get/get.dart';

enum SheepInsectAnimalPestControlRadio { yes, no,noAnswer }

class SheepInsectAnimalPestControlRadioController extends GetxController {
  SheepInsectAnimalPestControlRadio charcter =
      SheepInsectAnimalPestControlRadio.noAnswer;

  void onChange(SheepInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
