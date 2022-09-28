import 'package:get/get.dart';

enum AritificialSecondExist { yes, no }

class AritificialSecondController extends GetxController {
  AritificialSecondExist charcter = AritificialSecondExist.yes;

  void onChange(AritificialSecondExist value) {
    charcter = value;

    update();
  }
}