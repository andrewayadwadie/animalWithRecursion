import 'package:get/get.dart';

enum HorseSanitizersMilkerToolsRadio { yes, no,noAnswer }

class HorseSanitizersMilkerToolsRadioController extends GetxController {
  HorseSanitizersMilkerToolsRadio charcter = HorseSanitizersMilkerToolsRadio.noAnswer;

  void onChange(HorseSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

