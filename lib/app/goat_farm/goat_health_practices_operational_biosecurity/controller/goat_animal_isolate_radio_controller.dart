import 'package:get/get.dart';

enum GoatsickAnimalIsolateRadio { yes, no ,noAnswer}

class GoatsickAnimalIsolateRadioController extends GetxController {
  GoatsickAnimalIsolateRadio charcter = GoatsickAnimalIsolateRadio.noAnswer;

  void onChange(GoatsickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
