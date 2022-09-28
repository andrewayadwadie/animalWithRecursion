import 'package:get/get.dart';

enum CamelSemenSourceRadio { local, importation ,noAnswer}

class CamelSemenSourceRadioController extends GetxController {
  CamelSemenSourceRadio charcter = CamelSemenSourceRadio.noAnswer;

  void onChange(CamelSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
