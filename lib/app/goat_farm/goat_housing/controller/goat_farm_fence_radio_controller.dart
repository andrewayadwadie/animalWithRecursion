

import 'package:get/get.dart';

enum GoatFence { yes, no,noAnswer  }

class GoatFenceController extends GetxController {
  GoatFence charcter = GoatFence.noAnswer;

  void onChange(GoatFence value) {
    charcter = value;
    update();
  }
}
