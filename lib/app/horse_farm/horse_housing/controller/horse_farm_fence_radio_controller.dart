

import 'package:get/get.dart';

enum HorseFence { yes, no,noAnswer  }

class HorseFenceController extends GetxController {
  HorseFence charcter = HorseFence.noAnswer;

  void onChange(HorseFence value) {
    charcter = value;
    update();
  }
}
