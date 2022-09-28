import 'package:get/get.dart';

enum CowWoundsRadioController { yes, no,noAnswer }

class CowWoundsRadioControllerController extends GetxController {
  CowWoundsRadioController charcter = CowWoundsRadioController.noAnswer;

  void onChange(CowWoundsRadioController value) {
    charcter = value;
    update();
  }
}
