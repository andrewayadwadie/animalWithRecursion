import 'package:get/get.dart';

enum HorseAnimalsShowSymptomsRadio { yes, no ,noAnswer}

class HorseAnimalsShowSymptomsRadioController extends GetxController {
  HorseAnimalsShowSymptomsRadio charcter = HorseAnimalsShowSymptomsRadio.noAnswer;

  void onChange(HorseAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
