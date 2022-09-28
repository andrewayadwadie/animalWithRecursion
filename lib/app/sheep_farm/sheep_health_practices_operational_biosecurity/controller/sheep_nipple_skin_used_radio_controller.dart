import 'package:get/get.dart';

enum SheepNipplesSkinUsedRadio { yes, no ,noAnswer}

class SheepNipplesSkinUsedRadioController extends GetxController {
  SheepNipplesSkinUsedRadio charcter = SheepNipplesSkinUsedRadio.noAnswer;

  void onChange(SheepNipplesSkinUsedRadio value) {
    charcter = value;
    update();
  }
}
