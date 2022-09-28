import 'package:get/get.dart';

enum GoatTreatedRadio { yes, no,noAnswer }

class GoatTreatedRadioController extends GetxController {
  GoatTreatedRadio charcter = GoatTreatedRadio.noAnswer;

  void onChange(GoatTreatedRadio value) {
    charcter = value;
    update();
  }
}
