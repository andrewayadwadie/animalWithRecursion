import 'package:get/get.dart';

enum CowDipperRadio { after, before,noAnswer }

class CowDipperRadioController extends GetxController {
  CowDipperRadio charcter = CowDipperRadio.noAnswer;

  void onChange(CowDipperRadio value) {
    charcter = value;
    update();
  }
}
