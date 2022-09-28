import 'package:get/get.dart';

enum SheepSemenSourceRadio { local, importation ,noAnswer}

class SheepSemenSourceRadioController extends GetxController {
  SheepSemenSourceRadio charcter = SheepSemenSourceRadio.noAnswer;

  void onChange(SheepSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
