import 'package:get/get.dart';

enum SheepAntibioticsUseRadio { protection, treatment ,noAnswer}

class SheepAntibioticsUseRadioController extends GetxController {
  SheepAntibioticsUseRadio charcter = SheepAntibioticsUseRadio.noAnswer;

  void onChange(SheepAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
