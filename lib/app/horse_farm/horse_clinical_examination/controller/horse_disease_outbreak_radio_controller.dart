import 'package:get/get.dart';

enum HorseDiseaseOutbreakRadio { yes, no,noAnswer }

class HorseDiseaseOutbreakRadioController extends GetxController {
  HorseDiseaseOutbreakRadio charcter = HorseDiseaseOutbreakRadio.noAnswer;

  void onChange(HorseDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
