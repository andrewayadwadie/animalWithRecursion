import 'package:get/get.dart';

enum CowAntibioticsUseRadio { protection, treatment ,noAnswer}

class CowAntibioticsUseRadioController extends GetxController {
  CowAntibioticsUseRadio charcter = CowAntibioticsUseRadio.noAnswer;

  void onChange(CowAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
