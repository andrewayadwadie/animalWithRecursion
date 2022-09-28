import 'package:get/get.dart';

enum SheepsickAnimalIsolateRadio { yes, no ,noAnswer}

class SheepsickAnimalIsolateRadioController extends GetxController {
  SheepsickAnimalIsolateRadio charcter = SheepsickAnimalIsolateRadio.noAnswer;

  void onChange(SheepsickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
