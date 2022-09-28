import 'package:get/get.dart';

enum CowReproductionRadio { yes, no ,noAnswer}

class CowReproductionRadioController extends GetxController {
  CowReproductionRadio charcter = CowReproductionRadio.noAnswer;

  void onChange(CowReproductionRadio value) {
    charcter = value;
    update();
  }
}
