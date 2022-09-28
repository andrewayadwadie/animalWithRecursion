

import 'package:get/get.dart';

enum GoatFooderRadio { yes , no,noAnswer }

class GoatFooderRadioController extends GetxController {
  GoatFooderRadio charcter = GoatFooderRadio.noAnswer;

  void onChange(GoatFooderRadio value) {
    charcter = value;
    update();
  }
}
