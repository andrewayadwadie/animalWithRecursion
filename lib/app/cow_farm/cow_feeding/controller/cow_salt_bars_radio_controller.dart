

import 'package:get/get.dart';

enum CowSaltBarsRadio { yes , no ,noAnswer}

class CowSaltBarsRadioController extends GetxController {
  CowSaltBarsRadio charcter = CowSaltBarsRadio.noAnswer;

  void onChange(CowSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 