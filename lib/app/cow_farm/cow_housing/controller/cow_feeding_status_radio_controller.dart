import 'package:get/get.dart';

enum CowFeedingStausRadio { availableAllDay, specificTimesaDay ,noAnswer}

class CowFeedingStausRadioController extends GetxController {
  CowFeedingStausRadio charcter = CowFeedingStausRadio.noAnswer;

  void onChange(CowFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 