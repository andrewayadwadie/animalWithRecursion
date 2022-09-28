import 'package:get/get.dart';

enum HorseArtificialRadio { yes, no ,noAnswer}

class HorseArtificialRadioController extends GetxController {
  HorseArtificialRadio charcter = HorseArtificialRadio.noAnswer;

  void onChange(HorseArtificialRadio value) {
    charcter = value;
    update();
  }
}
