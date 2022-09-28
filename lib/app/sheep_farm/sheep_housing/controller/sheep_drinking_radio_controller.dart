import 'package:get/get.dart';

enum SheepDinkingRadio { availableAllDay, specificTimesaDay ,noAnswer }

class SheepDinkingRadioController extends GetxController {
  SheepDinkingRadio charcter = SheepDinkingRadio.noAnswer;

  void onChange(SheepDinkingRadio value) {
    charcter = value;
    update();
  }
}
