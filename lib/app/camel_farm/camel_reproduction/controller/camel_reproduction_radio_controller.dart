import 'package:get/get.dart';

enum CamelReproductionRadio { yes, no ,noAnswer}

class CamelReproductionRadioController extends GetxController {
  CamelReproductionRadio charcter = CamelReproductionRadio.noAnswer;

  void onChange(CamelReproductionRadio value) {
    charcter = value;
    update();
  }
}
