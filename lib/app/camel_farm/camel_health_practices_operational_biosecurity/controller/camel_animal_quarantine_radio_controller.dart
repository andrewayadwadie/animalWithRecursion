import 'package:get/get.dart';

enum CamelAnimalIsolateQuarantineRadio { yes, no,noAnswer }

class CamelAnimalIsolateQuarantineRadioController extends GetxController {
  CamelAnimalIsolateQuarantineRadio charcter = CamelAnimalIsolateQuarantineRadio.noAnswer;

  void onChange(CamelAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
