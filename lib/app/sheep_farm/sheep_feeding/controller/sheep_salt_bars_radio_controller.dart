

import 'package:get/get.dart';

enum SheepSaltBarsRadio { yes , no ,noAnswer}

class SheepSaltBarsRadioController extends GetxController {
  SheepSaltBarsRadio charcter = SheepSaltBarsRadio.noAnswer;

  void onChange(SheepSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 