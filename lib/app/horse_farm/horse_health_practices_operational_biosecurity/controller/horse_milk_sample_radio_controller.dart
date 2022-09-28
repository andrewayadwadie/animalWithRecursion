import 'package:get/get.dart';

enum HorseMIlkSampleRadio { yes, no ,noAnswer}

class HorseMIlkSampleRadioController extends GetxController {
  HorseMIlkSampleRadio charcter = HorseMIlkSampleRadio.noAnswer;

  void onChange(HorseMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
