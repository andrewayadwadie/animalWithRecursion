import 'package:get/get.dart';

enum GoatSanitizersMilkerToolsRadio { yes, no,noAnswer }

class GoatSanitizersMilkerToolsRadioController extends GetxController {
  GoatSanitizersMilkerToolsRadio charcter = GoatSanitizersMilkerToolsRadio.noAnswer;

  void onChange(GoatSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

