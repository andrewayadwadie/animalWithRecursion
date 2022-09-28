import 'package:get/get.dart';

enum HorseDinkingRadio { availableAllDay, specificTimesaDay ,noAnswer }

class HorseDinkingRadioController extends GetxController {
  HorseDinkingRadio charcter = HorseDinkingRadio.noAnswer;

  void onChange(HorseDinkingRadio value) {
    charcter = value;
    update();
  }
}
