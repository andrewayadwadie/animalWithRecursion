import 'package:get/get.dart';

enum CamelDipperRadio { after, before,noAnswer }

class CamelDipperRadioController extends GetxController {
  CamelDipperRadio charcter = CamelDipperRadio.noAnswer;

  void onChange(CamelDipperRadio value) {
    charcter = value;
    update();
  }
}
