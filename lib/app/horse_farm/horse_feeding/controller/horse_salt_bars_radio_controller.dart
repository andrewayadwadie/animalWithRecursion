

import 'package:get/get.dart';

enum HorseSaltBarsRadio { yes , no ,noAnswer}

class HorseSaltBarsRadioController extends GetxController {
  HorseSaltBarsRadio charcter = HorseSaltBarsRadio.noAnswer;

  void onChange(HorseSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 