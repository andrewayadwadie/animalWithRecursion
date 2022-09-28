

import 'package:get/get.dart';

enum GoatSaltBarsRadio { yes , no ,noAnswer}

class GoatSaltBarsRadioController extends GetxController {
  GoatSaltBarsRadio charcter = GoatSaltBarsRadio.noAnswer;

  void onChange(GoatSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 