import 'package:get/get.dart';

enum SheepInsectFarmPestControlRadio { yes, no,noAnswer }

class SheepInsectFarmPestControlRadioController extends GetxController {
  SheepInsectFarmPestControlRadio charcter =
      SheepInsectFarmPestControlRadio.noAnswer;

  void onChange(SheepInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
