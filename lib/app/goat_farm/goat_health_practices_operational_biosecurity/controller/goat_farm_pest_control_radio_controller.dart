import 'package:get/get.dart';

enum GoatInsectFarmPestControlRadio { yes, no,noAnswer }

class GoatInsectFarmPestControlRadioController extends GetxController {
  GoatInsectFarmPestControlRadio charcter =
      GoatInsectFarmPestControlRadio.noAnswer;

  void onChange(GoatInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
