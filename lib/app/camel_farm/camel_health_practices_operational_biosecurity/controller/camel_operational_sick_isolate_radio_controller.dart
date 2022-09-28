import 'package:get/get.dart';

enum CamelsickIsolateRadio { yes, no,noAnswer }

class CamelsickIsolateRadioController extends GetxController {
  CamelsickIsolateRadio charcter = CamelsickIsolateRadio.noAnswer;

  void onChange(CamelsickIsolateRadio value) {
    charcter = value;
    update();
  }
}
