import 'package:get/get.dart';

enum GoatAntibioticsUsedRadio { yes, no ,noAnswer}

class GoatAntibioticsUsedRadioController extends GetxController {
  GoatAntibioticsUsedRadio charcter =
      GoatAntibioticsUsedRadio.noAnswer;

  void onChange(GoatAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
