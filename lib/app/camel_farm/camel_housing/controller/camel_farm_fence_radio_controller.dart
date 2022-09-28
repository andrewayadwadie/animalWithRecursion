

import 'package:get/get.dart';

enum CamelFence { yes, no,noAnswer  }

class CamelFenceController extends GetxController {
  CamelFence charcter = CamelFence.noAnswer;

  void onChange(CamelFence value) {
    charcter = value;
    update();
  }
}
