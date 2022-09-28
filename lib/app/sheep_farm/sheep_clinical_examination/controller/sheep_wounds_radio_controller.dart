import 'package:get/get.dart';

enum SheepWoundsRadioController { yes, no,noAnswer }

class SheepWoundsRadioControllerController extends GetxController {
  SheepWoundsRadioController charcter = SheepWoundsRadioController.noAnswer;

  void onChange(SheepWoundsRadioController value) {
    charcter = value;
    update();
  }
}
