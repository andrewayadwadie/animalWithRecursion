

import 'package:get/get.dart';

enum CamelSaltBarsRadio { yes , no ,noAnswer}

class CamelSaltBarsRadioController extends GetxController {
  CamelSaltBarsRadio charcter = CamelSaltBarsRadio.noAnswer;

  void onChange(CamelSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 