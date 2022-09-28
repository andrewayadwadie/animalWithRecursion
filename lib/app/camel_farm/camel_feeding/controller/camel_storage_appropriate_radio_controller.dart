

import 'package:get/get.dart';

enum CamelStorageAppropriateRadio { yes , no,noAnswer }

class CamelStorageAppropriateRadioController extends GetxController {
  CamelStorageAppropriateRadio charcter = CamelStorageAppropriateRadio.noAnswer;

  void onChange(CamelStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 