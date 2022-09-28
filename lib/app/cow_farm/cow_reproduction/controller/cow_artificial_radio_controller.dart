import 'package:get/get.dart';

enum CowArtificialRadio { yes, no ,noAnswer}

class CowArtificialRadioController extends GetxController {
  CowArtificialRadio charcter = CowArtificialRadio.noAnswer;

  void onChange(CowArtificialRadio value) {
    charcter = value;
    update();
  }
}
