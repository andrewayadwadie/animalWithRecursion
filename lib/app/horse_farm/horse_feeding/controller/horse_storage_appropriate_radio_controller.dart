

import 'package:get/get.dart';

enum HorseStorageAppropriateRadio { yes , no,noAnswer }

class HorseStorageAppropriateRadioController extends GetxController {
  HorseStorageAppropriateRadio charcter = HorseStorageAppropriateRadio.noAnswer;

  void onChange(HorseStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 