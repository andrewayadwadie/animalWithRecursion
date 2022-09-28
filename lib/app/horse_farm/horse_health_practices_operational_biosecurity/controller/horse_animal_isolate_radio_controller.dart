import 'package:get/get.dart';

enum HorsesickAnimalIsolateRadio { yes, no ,noAnswer}

class HorsesickAnimalIsolateRadioController extends GetxController {
  HorsesickAnimalIsolateRadio charcter = HorsesickAnimalIsolateRadio.noAnswer;

  void onChange(HorsesickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
