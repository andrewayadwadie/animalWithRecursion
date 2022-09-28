import 'package:get/get.dart';

enum SheepInsectExistRadio { yes, no,noAnswer }

class SheepInsectExistRadioController extends GetxController {
  SheepInsectExistRadio charcter = SheepInsectExistRadio.noAnswer;

  void onChange(SheepInsectExistRadio value) {
    charcter = value;
    update();
  }
}
