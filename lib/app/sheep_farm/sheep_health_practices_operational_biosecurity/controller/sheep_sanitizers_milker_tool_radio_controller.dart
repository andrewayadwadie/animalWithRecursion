import 'package:get/get.dart';

enum SheepSanitizersMilkerToolsRadio { yes, no,noAnswer }

class SheepSanitizersMilkerToolsRadioController extends GetxController {
  SheepSanitizersMilkerToolsRadio charcter = SheepSanitizersMilkerToolsRadio.noAnswer;

  void onChange(SheepSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

