import 'package:get/get.dart';

enum CamelSanitizersMilkerToolsRadio { yes, no,noAnswer }

class CamelSanitizersMilkerToolsRadioController extends GetxController {
  CamelSanitizersMilkerToolsRadio charcter = CamelSanitizersMilkerToolsRadio.noAnswer;

  void onChange(CamelSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

