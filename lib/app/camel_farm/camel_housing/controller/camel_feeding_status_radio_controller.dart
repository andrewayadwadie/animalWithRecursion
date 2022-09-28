import 'package:get/get.dart';

enum CamelFeedingStausRadio { availableAllDay, specificTimesaDay ,noAnswer}

class CamelFeedingStausRadioController extends GetxController {
  CamelFeedingStausRadio charcter = CamelFeedingStausRadio.noAnswer;

  void onChange(CamelFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 