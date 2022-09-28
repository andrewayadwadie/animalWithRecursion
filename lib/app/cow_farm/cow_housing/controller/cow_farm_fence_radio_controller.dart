

import 'package:get/get.dart';

enum CowFence { yes, no,noAnswer  }

class CowFenceController extends GetxController {
  CowFence charcter = CowFence.noAnswer;

  void onChange(CowFence value) {
    charcter = value;
    update();
  }
}
