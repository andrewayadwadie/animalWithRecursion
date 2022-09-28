import 'package:get/get.dart';

enum SheepArtificialRadio { yes, no ,noAnswer}

class SheepArtificialRadioController extends GetxController {
  SheepArtificialRadio charcter = SheepArtificialRadio.noAnswer;

  void onChange(SheepArtificialRadio value) {
    charcter = value;
    update();
  }
}
