import 'package:get/get.dart';

enum GoatWoundsRadioController { yes, no,noAnswer }

class GoatWoundsRadioControllerController extends GetxController {
  GoatWoundsRadioController charcter = GoatWoundsRadioController.noAnswer;

  void onChange(GoatWoundsRadioController value) {
    charcter = value;
    update();
  }
}
