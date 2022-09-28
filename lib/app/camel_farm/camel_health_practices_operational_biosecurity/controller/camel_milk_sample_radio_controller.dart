import 'package:get/get.dart';

enum CamelMIlkSampleRadio { yes, no ,noAnswer}

class CamelMIlkSampleRadioController extends GetxController {
  CamelMIlkSampleRadio charcter = CamelMIlkSampleRadio.noAnswer;

  void onChange(CamelMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
