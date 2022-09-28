import 'package:get/get.dart';

enum CowAntibioticsSenstivityRadio { yes, no,noAnswer }

class CowAntibioticsSenstivityRadioController extends GetxController {
  CowAntibioticsSenstivityRadio charcter = CowAntibioticsSenstivityRadio.noAnswer;

  void onChange(CowAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

