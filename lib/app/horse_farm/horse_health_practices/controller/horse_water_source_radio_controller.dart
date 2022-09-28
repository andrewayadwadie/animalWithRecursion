import 'package:get/get.dart';

enum HorseWaterSourceRadio { treated, untreated ,noAnswer}

class HorseWaterSourceRadioController extends GetxController {
  HorseWaterSourceRadio charcter = HorseWaterSourceRadio.noAnswer;

  void onChange(HorseWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
