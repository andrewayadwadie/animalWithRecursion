import 'package:get/get.dart';

enum GoatFeedingStausRadio { availableAllDay, specificTimesaDay ,noAnswer}

class GoatFeedingStausRadioController extends GetxController {
  GoatFeedingStausRadio charcter = GoatFeedingStausRadio.noAnswer;

  void onChange(GoatFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 