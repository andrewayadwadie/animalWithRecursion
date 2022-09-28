import 'package:get/get.dart';

enum CowDinkingRadio { availableAllDay, specificTimesaDay ,noAnswer }

class CowDinkingRadioController extends GetxController {
  CowDinkingRadio charcter = CowDinkingRadio.noAnswer;

  void onChange(CowDinkingRadio value) {
    charcter = value;
    update();
  }
}
