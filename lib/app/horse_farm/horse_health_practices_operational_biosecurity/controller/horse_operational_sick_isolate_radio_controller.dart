import 'package:get/get.dart';

enum HorsesickIsolateRadio { yes, no,noAnswer }

class HorsesickIsolateRadioController extends GetxController {
  HorsesickIsolateRadio charcter = HorsesickIsolateRadio.noAnswer;

  void onChange(HorsesickIsolateRadio value) {
    charcter = value;
    update();
  }
}
