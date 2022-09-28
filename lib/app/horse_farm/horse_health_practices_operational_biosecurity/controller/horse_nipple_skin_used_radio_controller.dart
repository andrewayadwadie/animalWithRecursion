import 'package:get/get.dart';

enum HorseNipplesSkinUsedRadio { yes, no ,noAnswer}

class HorseNipplesSkinUsedRadioController extends GetxController {
  HorseNipplesSkinUsedRadio charcter = HorseNipplesSkinUsedRadio.noAnswer;

  void onChange(HorseNipplesSkinUsedRadio value) {
    charcter = value;
    update();
  }
}
