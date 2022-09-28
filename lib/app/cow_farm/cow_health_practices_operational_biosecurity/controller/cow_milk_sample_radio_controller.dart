import 'package:get/get.dart';

enum CowMIlkSampleRadio { yes, no ,noAnswer}

class CowMIlkSampleRadioController extends GetxController {
  CowMIlkSampleRadio charcter = CowMIlkSampleRadio.noAnswer;

  void onChange(CowMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
