

import 'package:get/get.dart';

enum GoatrodentsRadio { yes , no ,noAnswer}

class GoatrodentsRadioController extends GetxController {
  GoatrodentsRadio charcter = GoatrodentsRadio.noAnswer;

  void onChange(GoatrodentsRadio value) {
    charcter = value;
    update();
  }
}
 