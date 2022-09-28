import 'package:get/get.dart';

enum CamelDiseaseOutbreakRadio { yes, no,noAnswer }

class CamelDiseaseOutbreakRadioController extends GetxController {
  CamelDiseaseOutbreakRadio charcter = CamelDiseaseOutbreakRadio.noAnswer;

  void onChange(CamelDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
