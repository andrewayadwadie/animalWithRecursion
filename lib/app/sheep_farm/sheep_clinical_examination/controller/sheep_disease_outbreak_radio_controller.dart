import 'package:get/get.dart';

enum SheepDiseaseOutbreakRadio { yes, no,noAnswer }

class SheepDiseaseOutbreakRadioController extends GetxController {
  SheepDiseaseOutbreakRadio charcter = SheepDiseaseOutbreakRadio.noAnswer;

  void onChange(SheepDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
