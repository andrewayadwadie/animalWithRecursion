import 'package:get/get.dart';

enum CamelUdderWashedRadio { after, before,noAnswer }

class CamelUdderWashedRadioController extends GetxController {
  CamelUdderWashedRadio charcter = CamelUdderWashedRadio.noAnswer;

  void onChange(CamelUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
