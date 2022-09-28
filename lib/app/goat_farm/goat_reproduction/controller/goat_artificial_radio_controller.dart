import 'package:get/get.dart';

enum GoatArtificialRadio { yes, no ,noAnswer}

class GoatArtificialRadioController extends GetxController {
  GoatArtificialRadio charcter = GoatArtificialRadio.noAnswer;

  void onChange(GoatArtificialRadio value) {
    charcter = value;
    update();
  }
}
