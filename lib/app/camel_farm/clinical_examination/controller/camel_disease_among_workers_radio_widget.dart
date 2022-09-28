import 'package:get/get.dart';

enum CamelDiseaseAmongWorkersRadio { yes, no,noAnswer }

class CamelDiseaseAmongWorkersRadioController extends GetxController {
  CamelDiseaseAmongWorkersRadio charcter = CamelDiseaseAmongWorkersRadio.noAnswer;

  void onChange(CamelDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
