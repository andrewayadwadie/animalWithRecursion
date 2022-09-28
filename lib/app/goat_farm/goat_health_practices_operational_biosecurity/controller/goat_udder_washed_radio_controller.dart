import 'package:get/get.dart';

enum GoatUdderWashedRadio { after, before,noAnswer }

class GoatUdderWashedRadioController extends GetxController {
  GoatUdderWashedRadio charcter = GoatUdderWashedRadio.noAnswer;

  void onChange(GoatUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
