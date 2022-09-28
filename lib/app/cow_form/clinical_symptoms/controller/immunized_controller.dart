import 'package:get/get.dart';

enum ImmunizedExist { yes, no }

class ImmunizedController extends GetxController {
  ImmunizedExist charcter = ImmunizedExist.yes;

  void onChange(ImmunizedExist value) {
    charcter = value;

    update();
  }
}
