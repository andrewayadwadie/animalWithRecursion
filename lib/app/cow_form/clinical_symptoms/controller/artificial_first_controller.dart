import 'package:get/get.dart';

enum AritificialFirstExist { yes, no }

class AritificialFirstController extends GetxController {
  AritificialFirstExist charcter = AritificialFirstExist.yes;

  void onChange(AritificialFirstExist value) {
    charcter = value;

    update();
  }
}