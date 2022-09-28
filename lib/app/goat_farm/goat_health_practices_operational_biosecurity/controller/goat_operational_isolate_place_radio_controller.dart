import 'package:get/get.dart';

enum GoatIsolatePlaceRadio { yes, no ,noAnswer}

class GoatIsolatePlaceRadioController extends GetxController {
  GoatIsolatePlaceRadio charcter = GoatIsolatePlaceRadio.noAnswer;

  void onChange(GoatIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
