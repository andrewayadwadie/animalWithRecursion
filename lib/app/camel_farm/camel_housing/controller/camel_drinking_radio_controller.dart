import 'package:get/get.dart';

enum CamelDinkingRadio { availableAllDay, specificTimesaDay ,noAnswer }

class CamelDinkingRadioController extends GetxController {
  CamelDinkingRadio charcter = CamelDinkingRadio.noAnswer;

  void onChange(CamelDinkingRadio value) {
    charcter = value;
    update();
  }
}
