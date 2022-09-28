import 'package:get/get.dart';

enum HorseInsectFarmPestControlRadio { yes, no,noAnswer }

class HorseInsectFarmPestControlRadioController extends GetxController {
  HorseInsectFarmPestControlRadio charcter =
      HorseInsectFarmPestControlRadio.noAnswer;

  void onChange(HorseInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
