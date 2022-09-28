import 'package:get/get.dart';

enum GoatsickIsolateRadio { yes, no,noAnswer }

class GoatsickIsolateRadioController extends GetxController {
  GoatsickIsolateRadio charcter = GoatsickIsolateRadio.noAnswer;

  void onChange(GoatsickIsolateRadio value) {
    charcter = value;
    update();
  }
}
