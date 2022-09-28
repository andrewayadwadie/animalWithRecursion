import 'package:get/get.dart';

enum GoatSoresRadioController { yes, no ,noAnswer}

class GoatSoresRadioControllerController extends GetxController {
  GoatSoresRadioController charcter = GoatSoresRadioController.noAnswer;

  void onChange(GoatSoresRadioController value) {
    charcter = value;
    update();
  }
}
