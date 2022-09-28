import 'package:get/get.dart';

enum CamelSlaughterRadio { yes, no ,noAnswer}

class CamelSlaughterRadioController extends GetxController {
  CamelSlaughterRadio charcter = CamelSlaughterRadio.noAnswer;

  void onChange(CamelSlaughterRadio value) {
    charcter = value;
    update();
  }
}


