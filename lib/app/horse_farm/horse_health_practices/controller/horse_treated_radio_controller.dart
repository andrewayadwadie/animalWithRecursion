import 'package:get/get.dart';

enum HorseTreatedRadio { yes, no,noAnswer }

class HorseTreatedRadioController extends GetxController {
  HorseTreatedRadio charcter = HorseTreatedRadio.noAnswer;

  void onChange(HorseTreatedRadio value) {
    charcter = value;
    update();
  }
}
