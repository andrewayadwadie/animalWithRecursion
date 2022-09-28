import 'package:get/get.dart';

enum GoatAnimalBathedRadio { yes, no,noAnswer }

class GoatAnimalBathedRadioController extends GetxController {
  GoatAnimalBathedRadio charcter = GoatAnimalBathedRadio.noAnswer;

  void onChange(GoatAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

