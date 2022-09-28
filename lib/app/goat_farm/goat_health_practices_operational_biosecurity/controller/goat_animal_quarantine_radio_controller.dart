import 'package:get/get.dart';

enum GoatAnimalIsolateQuarantineRadio { yes, no,noAnswer }

class GoatAnimalIsolateQuarantineRadioController extends GetxController {
  GoatAnimalIsolateQuarantineRadio charcter = GoatAnimalIsolateQuarantineRadio.noAnswer;

  void onChange(GoatAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
