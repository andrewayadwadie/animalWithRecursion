import 'package:get/get.dart';

enum CowDiseaseAmongWorkersRadio { yes, no,noAnswer }

class CowDiseaseAmongWorkersRadioController extends GetxController {
  CowDiseaseAmongWorkersRadio charcter = CowDiseaseAmongWorkersRadio.noAnswer;

  void onChange(CowDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
