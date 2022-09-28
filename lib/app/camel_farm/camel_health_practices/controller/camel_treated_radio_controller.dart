import 'package:get/get.dart';

enum CamelTreatedRadio { yes, no,noAnswer }

class CamelTreatedRadioController extends GetxController {
  CamelTreatedRadio charcter = CamelTreatedRadio.noAnswer;

  void onChange(CamelTreatedRadio value) {
    charcter = value;
    update();
  }
}
