import 'package:get/get.dart';

enum CamelNipplesSkinUsedRadio { yes, no ,noAnswer}

class CamelNipplesSkinUsedRadioController extends GetxController {
  CamelNipplesSkinUsedRadio charcter = CamelNipplesSkinUsedRadio.noAnswer;

  void onChange(CamelNipplesSkinUsedRadio value) {
    charcter = value;
    update();
  }
}
