import 'package:get/get.dart';

enum SheepsickIsolateRadio { yes, no,noAnswer }

class SheepsickIsolateRadioController extends GetxController {
  SheepsickIsolateRadio charcter = SheepsickIsolateRadio.noAnswer;

  void onChange(SheepsickIsolateRadio value) {
    charcter = value;
    update();
  }
}
