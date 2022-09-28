import 'package:get/get.dart';

enum HorseInsectExistRadio { yes, no,noAnswer }

class HorseInsectExistRadioController extends GetxController {
  HorseInsectExistRadio charcter = HorseInsectExistRadio.noAnswer;

  void onChange(HorseInsectExistRadio value) {
    charcter = value;
    update();
  }
}
