import 'package:get/get.dart';

enum CamelSoresRadioController { yes, no ,noAnswer}

class CamelSoresRadioControllerController extends GetxController {
  CamelSoresRadioController charcter = CamelSoresRadioController.noAnswer;

  void onChange(CamelSoresRadioController value) {
    charcter = value;
    update();
  }
}
