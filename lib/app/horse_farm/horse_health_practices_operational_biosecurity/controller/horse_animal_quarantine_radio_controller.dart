import 'package:get/get.dart';

enum HorseAnimalIsolateQuarantineRadio { yes, no,noAnswer }

class HorseAnimalIsolateQuarantineRadioController extends GetxController {
  HorseAnimalIsolateQuarantineRadio charcter = HorseAnimalIsolateQuarantineRadio.noAnswer;

  void onChange(HorseAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
