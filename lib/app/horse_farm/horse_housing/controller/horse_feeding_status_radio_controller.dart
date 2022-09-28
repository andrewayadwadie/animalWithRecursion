import 'package:get/get.dart';

enum HorseFeedingStausRadio { availableAllDay, specificTimesaDay ,noAnswer}

class HorseFeedingStausRadioController extends GetxController {
  HorseFeedingStausRadio charcter = HorseFeedingStausRadio.noAnswer;

  void onChange(HorseFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 