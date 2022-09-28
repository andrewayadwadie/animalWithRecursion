import 'package:get/get.dart';

enum SwellingExist { yes, no }

class SwellingController extends GetxController {
  SwellingExist charcter = SwellingExist.yes;

  void onChange(SwellingExist value) {
    charcter = value;

    update();
  }
}