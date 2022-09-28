import 'package:get/get.dart';

enum CowAnimalBathedRadio { yes, no,noAnswer }

class CowAnimalBathedRadioController extends GetxController {
  CowAnimalBathedRadio charcter = CowAnimalBathedRadio.noAnswer;

  void onChange(CowAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

