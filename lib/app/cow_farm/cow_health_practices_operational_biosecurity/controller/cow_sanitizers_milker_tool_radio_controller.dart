import 'package:get/get.dart';

enum CowSanitizersMilkerToolsRadio { yes, no,noAnswer }

class CowSanitizersMilkerToolsRadioController extends GetxController {
  CowSanitizersMilkerToolsRadio charcter = CowSanitizersMilkerToolsRadio.noAnswer;

  void onChange(CowSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

