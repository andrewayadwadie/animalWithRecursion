import 'package:get/get.dart';

enum CowNipplesSkinUsedRadio { yes, no ,noAnswer}

class CowNipplesSkinUsedRadioController extends GetxController {
  CowNipplesSkinUsedRadio charcter = CowNipplesSkinUsedRadio.noAnswer;

  void onChange(CowNipplesSkinUsedRadio value) {
    charcter = value;
    update();
  }
}
