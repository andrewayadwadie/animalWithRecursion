import 'package:get/get.dart';

enum CamelArtificialRadio { yes, no ,noAnswer}

class CamelArtificialRadioController extends GetxController {
  CamelArtificialRadio charcter = CamelArtificialRadio.noAnswer;

  void onChange(CamelArtificialRadio value) {
    charcter = value;
    update();
  }
}
