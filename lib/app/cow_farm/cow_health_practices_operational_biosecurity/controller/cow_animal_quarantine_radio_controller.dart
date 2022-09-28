import 'package:get/get.dart';

enum CowAnimalIsolateQuarantineRadio { yes, no,noAnswer }

class CowAnimalIsolateQuarantineRadioController extends GetxController {
  CowAnimalIsolateQuarantineRadio charcter = CowAnimalIsolateQuarantineRadio.noAnswer;

  void onChange(CowAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
