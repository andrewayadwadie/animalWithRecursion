import 'package:get/get.dart';

enum CamelsickAnimalIsolateRadio { yes, no ,noAnswer}

class CamelsickAnimalIsolateRadioController extends GetxController {
  CamelsickAnimalIsolateRadio charcter = CamelsickAnimalIsolateRadio.noAnswer;

  void onChange(CamelsickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
