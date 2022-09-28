import 'package:get/get.dart';

enum HorseAntibioticsUseRadio { protection, treatment ,noAnswer}

class HorseAntibioticsUseRadioController extends GetxController {
  HorseAntibioticsUseRadio charcter = HorseAntibioticsUseRadio.noAnswer;

  void onChange(HorseAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
