import 'package:get/get.dart';

enum SheepAnimalBathedRadio { yes, no,noAnswer }

class SheepAnimalBathedRadioController extends GetxController {
  SheepAnimalBathedRadio charcter = SheepAnimalBathedRadio.noAnswer;

  void onChange(SheepAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

