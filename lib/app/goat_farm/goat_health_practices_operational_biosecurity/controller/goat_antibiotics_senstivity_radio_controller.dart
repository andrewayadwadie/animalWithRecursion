import 'package:get/get.dart';

enum GoatAntibioticsSenstivityRadio { yes, no,noAnswer }

class GoatAntibioticsSenstivityRadioController extends GetxController {
  GoatAntibioticsSenstivityRadio charcter = GoatAntibioticsSenstivityRadio.noAnswer;

  void onChange(GoatAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

