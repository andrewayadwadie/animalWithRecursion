import 'package:get/get.dart';

enum AritificialForthExist { yes, no }

class AritificialForthController extends GetxController {
  AritificialForthExist charcter = AritificialForthExist.yes;

  void onChange(AritificialForthExist value) {
    charcter = value;

    update();
  }
}