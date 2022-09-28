

import 'package:get/get.dart';

enum HorserodentsRadio { yes , no ,noAnswer}

class HorserodentsRadioController extends GetxController {
  HorserodentsRadio charcter = HorserodentsRadio.noAnswer;

  void onChange(HorserodentsRadio value) {
    charcter = value;
    update();
  }
}
 