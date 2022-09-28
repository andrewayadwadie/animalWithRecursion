import 'package:get/get.dart';

enum GoatNipplesSkinUsedRadio { yes, no ,noAnswer}

class GoatNipplesSkinUsedRadioController extends GetxController {
  GoatNipplesSkinUsedRadio charcter = GoatNipplesSkinUsedRadio.noAnswer;

  void onChange(GoatNipplesSkinUsedRadio value) {
    charcter = value;
    update();
  }
}
