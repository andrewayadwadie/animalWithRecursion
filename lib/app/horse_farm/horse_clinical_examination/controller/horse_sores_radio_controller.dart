import 'package:get/get.dart';

enum HorseSoresRadioController { yes, no ,noAnswer}

class HorseSoresRadioControllerController extends GetxController {
  HorseSoresRadioController charcter = HorseSoresRadioController.noAnswer;

  void onChange(HorseSoresRadioController value) {
    charcter = value;
    update();
  }
}
