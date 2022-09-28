import 'package:get/get.dart';

enum AritificialThirdExist { yes, no }

class AritificialThirdController extends GetxController {
  AritificialThirdExist charcter = AritificialThirdExist.yes;

  void onChange(AritificialThirdExist value) {
    charcter = value;

    update();
  }
}