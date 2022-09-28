
import 'package:get/get.dart';

enum TempExist { yes, no }

class TempController extends GetxController {
  TempExist charcter = TempExist.yes;

  void onChange(TempExist value) {
    charcter = value;

    update();
  }
}

