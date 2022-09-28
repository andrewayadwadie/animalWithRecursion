import 'package:get/get.dart';

enum LambExist { yes, no }

class LambController extends GetxController {
  LambExist charcter = LambExist.yes;

  void onChange(LambExist value) {
    charcter = value;

    update();
  }
}



