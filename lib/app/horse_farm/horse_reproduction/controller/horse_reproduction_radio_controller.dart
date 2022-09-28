import 'package:get/get.dart';

enum HorseReproductionRadio { yes, no ,noAnswer}

class HorseReproductionRadioController extends GetxController {
  HorseReproductionRadio charcter = HorseReproductionRadio.noAnswer;

  void onChange(HorseReproductionRadio value) {
    charcter = value;
    update();
  }
}
