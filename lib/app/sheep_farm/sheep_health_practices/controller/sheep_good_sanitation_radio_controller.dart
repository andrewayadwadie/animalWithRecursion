import 'package:get/get.dart';

enum SheepGoodSanitationRadio { yes, no ,noAnswer}

class SheepGoodSanitationRadioController extends GetxController {
  SheepGoodSanitationRadio charcter = SheepGoodSanitationRadio.noAnswer;

  void onChange(SheepGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
