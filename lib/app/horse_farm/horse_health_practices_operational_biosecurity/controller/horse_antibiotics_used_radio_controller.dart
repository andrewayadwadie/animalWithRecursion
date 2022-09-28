import 'package:get/get.dart';

enum HorseAntibioticsUsedRadio { yes, no ,noAnswer}

class HorseAntibioticsUsedRadioController extends GetxController {
  HorseAntibioticsUsedRadio charcter =
      HorseAntibioticsUsedRadio.noAnswer;

  void onChange(HorseAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
