import 'package:get/get.dart';

enum CamelAntibioticsSenstivityRadio { yes, no,noAnswer }

class CamelAntibioticsSenstivityRadioController extends GetxController {
  CamelAntibioticsSenstivityRadio charcter = CamelAntibioticsSenstivityRadio.noAnswer;

  void onChange(CamelAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

