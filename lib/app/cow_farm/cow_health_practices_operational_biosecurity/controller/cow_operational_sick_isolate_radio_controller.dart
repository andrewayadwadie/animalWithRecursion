import 'package:get/get.dart';

enum CowsickIsolateRadio { yes, no,noAnswer }

class CowsickIsolateRadioController extends GetxController {
  CowsickIsolateRadio charcter = CowsickIsolateRadio.noAnswer;

  void onChange(CowsickIsolateRadio value) {
    charcter = value;
    update();
  }
}
