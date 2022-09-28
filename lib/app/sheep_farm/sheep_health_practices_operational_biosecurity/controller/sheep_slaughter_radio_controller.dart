import 'package:get/get.dart';

enum SheepSlaughterRadio { yes, no ,noAnswer}

class SheepSlaughterRadioController extends GetxController {
  SheepSlaughterRadio charcter = SheepSlaughterRadio.noAnswer;

  void onChange(SheepSlaughterRadio value) {
    charcter = value;
    update();
  }
}


