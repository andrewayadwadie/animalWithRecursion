import 'package:get/get.dart';

enum CamelAnimalBathedRadio { yes, no,noAnswer }

class CamelAnimalBathedRadioController extends GetxController {
  CamelAnimalBathedRadio charcter = CamelAnimalBathedRadio.noAnswer;

  void onChange(CamelAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

