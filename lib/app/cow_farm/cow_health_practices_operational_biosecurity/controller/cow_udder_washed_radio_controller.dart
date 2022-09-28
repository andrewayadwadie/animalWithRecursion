import 'package:get/get.dart';

enum CowUdderWashedRadio { after, before,noAnswer }

class CowUdderWashedRadioController extends GetxController {
  CowUdderWashedRadio charcter = CowUdderWashedRadio.noAnswer;

  void onChange(CowUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
