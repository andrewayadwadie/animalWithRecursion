import 'package:get/get.dart';

enum HorseSemenSourceRadio { local, importation ,noAnswer}

class HorseSemenSourceRadioController extends GetxController {
  HorseSemenSourceRadio charcter = HorseSemenSourceRadio.noAnswer;

  void onChange(HorseSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
