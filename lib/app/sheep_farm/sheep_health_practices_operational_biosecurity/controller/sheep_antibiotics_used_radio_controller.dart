import 'package:get/get.dart';

enum SheepAntibioticsUsedRadio { yes, no ,noAnswer}

class SheepAntibioticsUsedRadioController extends GetxController {
  SheepAntibioticsUsedRadio charcter =
      SheepAntibioticsUsedRadio.noAnswer;

  void onChange(SheepAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
