import 'package:get/get.dart';

enum GoatAntibioticsUseRadio { protection, treatment ,noAnswer}

class GoatAntibioticsUseRadioController extends GetxController {
  GoatAntibioticsUseRadio charcter = GoatAntibioticsUseRadio.noAnswer;

  void onChange(GoatAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
