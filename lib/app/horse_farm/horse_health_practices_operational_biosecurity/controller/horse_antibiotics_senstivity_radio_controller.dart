import 'package:get/get.dart';

enum HorseAntibioticsSenstivityRadio { yes, no,noAnswer }

class HorseAntibioticsSenstivityRadioController extends GetxController {
  HorseAntibioticsSenstivityRadio charcter = HorseAntibioticsSenstivityRadio.noAnswer;

  void onChange(HorseAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

