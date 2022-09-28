import 'package:get/get.dart';

enum GoatReproductionRadio { yes, no ,noAnswer}

class GoatReproductionRadioController extends GetxController {
  GoatReproductionRadio charcter = GoatReproductionRadio.noAnswer;

  void onChange(GoatReproductionRadio value) {
    charcter = value;
    update();
  }
}
