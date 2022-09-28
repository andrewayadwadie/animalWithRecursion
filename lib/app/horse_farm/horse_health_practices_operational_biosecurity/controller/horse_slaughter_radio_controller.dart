import 'package:get/get.dart';

enum HorseSlaughterRadio { yes, no ,noAnswer}

class HorseSlaughterRadioController extends GetxController {
  HorseSlaughterRadio charcter = HorseSlaughterRadio.noAnswer;

  void onChange(HorseSlaughterRadio value) {
    charcter = value;
    update();
  }
}


