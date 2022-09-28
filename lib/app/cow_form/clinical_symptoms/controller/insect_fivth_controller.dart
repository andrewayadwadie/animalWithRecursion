import 'package:get/get.dart';

enum InsectFivthExist { yes, no }

class InsectFivthController extends GetxController {
  InsectFivthExist charcter = InsectFivthExist.yes;

  void onChange(InsectFivthExist value) {
    charcter = value;

    update();
  }
}