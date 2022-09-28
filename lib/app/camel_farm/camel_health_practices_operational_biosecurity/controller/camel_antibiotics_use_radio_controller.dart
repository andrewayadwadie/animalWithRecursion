import 'package:get/get.dart';

enum CamelAntibioticsUseRadio { protection, treatment ,noAnswer}

class CamelAntibioticsUseRadioController extends GetxController {
  CamelAntibioticsUseRadio charcter = CamelAntibioticsUseRadio.noAnswer;

  void onChange(CamelAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
