

import 'package:get/get.dart';

enum GoatStorageAppropriateRadio { yes , no,noAnswer }

class GoatStorageAppropriateRadioController extends GetxController {
  GoatStorageAppropriateRadio charcter = GoatStorageAppropriateRadio.noAnswer;

  void onChange(GoatStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 