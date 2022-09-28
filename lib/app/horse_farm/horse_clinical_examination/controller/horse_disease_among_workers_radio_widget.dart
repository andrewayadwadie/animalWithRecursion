import 'package:get/get.dart';

enum HorseDiseaseAmongWorkersRadio { yes, no,noAnswer }

class HorseDiseaseAmongWorkersRadioController extends GetxController {
  HorseDiseaseAmongWorkersRadio charcter = HorseDiseaseAmongWorkersRadio.noAnswer;

  void onChange(HorseDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
