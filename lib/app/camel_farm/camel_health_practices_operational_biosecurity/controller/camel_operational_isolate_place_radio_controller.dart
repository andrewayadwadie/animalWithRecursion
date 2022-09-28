import 'package:get/get.dart';

enum CamelIsolatePlaceRadio { yes, no ,noAnswer}

class CamelIsolatePlaceRadioController extends GetxController {
  CamelIsolatePlaceRadio charcter = CamelIsolatePlaceRadio.noAnswer;

  void onChange(CamelIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
