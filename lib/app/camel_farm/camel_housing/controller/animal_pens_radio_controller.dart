import 'package:get/get.dart';

enum CamelPensRadio { yes, no ,noAnswer}

class CamelPensRadioController extends GetxController {
  CamelPensRadio charcter = CamelPensRadio.noAnswer;

  void onChange(CamelPensRadio value) {
    charcter = value;
    update();
  }
}
