import 'package:get/get.dart';

enum CowsickAnimalIsolateRadio { yes, no ,noAnswer}

class CowsickAnimalIsolateRadioController extends GetxController {
  CowsickAnimalIsolateRadio charcter = CowsickAnimalIsolateRadio.noAnswer;

  void onChange(CowsickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
