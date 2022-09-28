import 'package:get/get.dart';

enum CowSoresRadioController { yes, no ,noAnswer}

class CowSoresRadioControllerController extends GetxController {
  CowSoresRadioController charcter = CowSoresRadioController.noAnswer;

  void onChange(CowSoresRadioController value) {
    charcter = value;
    update();
  }
}
