

import 'package:get/get.dart';

enum CowStorageAppropriateRadio { yes , no,noAnswer }

class CowStorageAppropriateRadioController extends GetxController {
  CowStorageAppropriateRadio charcter = CowStorageAppropriateRadio.noAnswer;

  void onChange(CowStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 