import 'package:get/get.dart';

enum CowInsectFarmPestControlRadio { yes, no,noAnswer }

class CowInsectFarmPestControlRadioController extends GetxController {
  CowInsectFarmPestControlRadio charcter =
      CowInsectFarmPestControlRadio.noAnswer;

  void onChange(CowInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
