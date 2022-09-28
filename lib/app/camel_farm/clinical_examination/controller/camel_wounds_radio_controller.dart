import 'package:get/get.dart';

enum CamelWoundsRadioController { yes, no,noAnswer }

class CamelWoundsRadioControllerController extends GetxController {
  CamelWoundsRadioController charcter = CamelWoundsRadioController.noAnswer;

  void onChange(CamelWoundsRadioController value) {
    charcter = value;
    update();
  }
}
