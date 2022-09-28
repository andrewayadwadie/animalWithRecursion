import 'package:get/get.dart';

enum HorseWorkersClothsRadio { yes, no,noAnswer }

class HorseWorkersClothsRadioController extends GetxController {
  HorseWorkersClothsRadio charcter = HorseWorkersClothsRadio.noAnswer;

  void onChange(HorseWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
