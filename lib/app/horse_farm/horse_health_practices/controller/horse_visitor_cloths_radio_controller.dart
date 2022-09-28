import 'package:get/get.dart';

enum HorseVisitorClothsRadio { yes, no ,noAnswer }

class HorseVisitorClothsRadioController extends GetxController {
  HorseVisitorClothsRadio charcter = HorseVisitorClothsRadio.noAnswer;

  void onChange(HorseVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
