import 'package:get/get.dart';

enum CowDiseaseOutbreakRadio { yes, no,noAnswer }

class CowDiseaseOutbreakRadioController extends GetxController {
  CowDiseaseOutbreakRadio charcter = CowDiseaseOutbreakRadio.noAnswer;

  void onChange(CowDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
