import 'package:get/get.dart';

enum CowAntibioticsUsedRadio { yes, no ,noAnswer}

class CowAntibioticsUsedRadioController extends GetxController {
  CowAntibioticsUsedRadio charcter =
      CowAntibioticsUsedRadio.noAnswer;

  void onChange(CowAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
