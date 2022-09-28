import 'package:get/get.dart';

enum CamelInsectExistRadio { yes, no,noAnswer }

class CamelInsectExistRadioController extends GetxController {
  CamelInsectExistRadio charcter = CamelInsectExistRadio.noAnswer;

  void onChange(CamelInsectExistRadio value) {
    charcter = value;
    update();
  }
}
