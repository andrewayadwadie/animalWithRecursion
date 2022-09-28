import 'package:get/get.dart';

enum SheepFeedingStausRadio { availableAllDay, specificTimesaDay ,noAnswer}

class SheepFeedingStausRadioController extends GetxController {
  SheepFeedingStausRadio charcter = SheepFeedingStausRadio.noAnswer;

  void onChange(SheepFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 