import 'package:get/get.dart';

enum SheepSoresRadioController { yes, no ,noAnswer}

class SheepSoresRadioControllerController extends GetxController {
  SheepSoresRadioController charcter = SheepSoresRadioController.noAnswer;

  void onChange(SheepSoresRadioController value) {
    charcter = value;
    update();
  }
}
