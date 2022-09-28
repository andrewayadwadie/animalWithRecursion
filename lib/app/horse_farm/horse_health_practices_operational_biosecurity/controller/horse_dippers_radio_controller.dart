import 'package:get/get.dart';

enum HorseDipperRadio { after, before,noAnswer }

class HorseDipperRadioController extends GetxController {
  HorseDipperRadio charcter = HorseDipperRadio.noAnswer;

  void onChange(HorseDipperRadio value) {
    charcter = value;
    update();
  }
}
