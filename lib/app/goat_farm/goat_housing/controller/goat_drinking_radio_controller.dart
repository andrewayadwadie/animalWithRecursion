import 'package:get/get.dart';

enum GoatDinkingRadio { availableAllDay, specificTimesaDay ,noAnswer }

class GoatDinkingRadioController extends GetxController {
  GoatDinkingRadio charcter = GoatDinkingRadio.noAnswer;

  void onChange(GoatDinkingRadio value) {
    charcter = value;
    update();
  }
}
