import 'package:get/get.dart';

enum CamelInsectFarmPestControlRadio { yes, no,noAnswer }

class CamelInsectFarmPestControlRadioController extends GetxController {
  CamelInsectFarmPestControlRadio charcter =
      CamelInsectFarmPestControlRadio.noAnswer;

  void onChange(CamelInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
