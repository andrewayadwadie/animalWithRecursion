import 'package:get/get.dart';

enum GoatDipperRadio { after, before,noAnswer }

class GoatDipperRadioController extends GetxController {
  GoatDipperRadio charcter = GoatDipperRadio.noAnswer;

  void onChange(GoatDipperRadio value) {
    charcter = value;
    update();
  }
}
