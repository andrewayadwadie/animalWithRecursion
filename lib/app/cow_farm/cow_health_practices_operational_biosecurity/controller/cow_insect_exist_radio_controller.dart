import 'package:get/get.dart';

enum CowInsectExistRadio { yes, no,noAnswer }

class CowInsectExistRadioController extends GetxController {
  CowInsectExistRadio charcter = CowInsectExistRadio.noAnswer;

  void onChange(CowInsectExistRadio value) {
    charcter = value;
    update();
  }
}
