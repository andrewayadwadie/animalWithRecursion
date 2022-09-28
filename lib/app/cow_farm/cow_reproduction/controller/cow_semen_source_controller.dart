import 'package:get/get.dart';

enum CowSemenSourceRadio { local, importation ,noAnswer}

class CowSemenSourceRadioController extends GetxController {
  CowSemenSourceRadio charcter = CowSemenSourceRadio.noAnswer;

  void onChange(CowSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
