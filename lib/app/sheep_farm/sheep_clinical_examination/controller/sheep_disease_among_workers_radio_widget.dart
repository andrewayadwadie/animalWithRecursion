import 'package:get/get.dart';

enum SheepDiseaseAmongWorkersRadio { yes, no,noAnswer }

class SheepDiseaseAmongWorkersRadioController extends GetxController {
  SheepDiseaseAmongWorkersRadio charcter = SheepDiseaseAmongWorkersRadio.noAnswer;

  void onChange(SheepDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
