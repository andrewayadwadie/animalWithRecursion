import 'package:get/get.dart';

enum CowSlaughterRadio { yes, no ,noAnswer}

class CowSlaughterRadioController extends GetxController {
  CowSlaughterRadio charcter = CowSlaughterRadio.noAnswer;

  void onChange(CowSlaughterRadio value) {
    charcter = value;
    update();
  }
}


