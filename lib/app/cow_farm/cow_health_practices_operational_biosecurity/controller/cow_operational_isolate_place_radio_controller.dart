import 'package:get/get.dart';

enum CowIsolatePlaceRadio { yes, no ,noAnswer}

class CowIsolatePlaceRadioController extends GetxController {
  CowIsolatePlaceRadio charcter = CowIsolatePlaceRadio.noAnswer;

  void onChange(CowIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
