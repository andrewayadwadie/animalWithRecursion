import 'package:get/get.dart';

enum GoatCleanVisitorRadio { yes, no,noAnswer }

class GoatCleanVisitorRadioController extends GetxController {
  GoatCleanVisitorRadio charcter = GoatCleanVisitorRadio.noAnswer;

  void onChange(GoatCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
