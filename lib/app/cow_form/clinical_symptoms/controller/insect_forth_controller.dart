import 'package:get/get.dart';

enum InsectForthExist { yes, no }

class InsectForthController extends GetxController {
  InsectForthExist charcter = InsectForthExist.yes;

  void onChange(InsectForthExist value) {
    charcter = value;

    update();
  }
}