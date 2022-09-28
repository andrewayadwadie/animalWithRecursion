import 'package:get/get.dart';

enum CamelAntibioticsUsedRadio { yes, no ,noAnswer}

class CamelAntibioticsUsedRadioController extends GetxController {
  CamelAntibioticsUsedRadio charcter =
      CamelAntibioticsUsedRadio.noAnswer;

  void onChange(CamelAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
