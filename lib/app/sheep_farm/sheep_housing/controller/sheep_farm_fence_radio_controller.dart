

import 'package:get/get.dart';

enum SheepFence { yes, no,noAnswer  }

class SheepFenceController extends GetxController {
  SheepFence charcter = SheepFence.noAnswer;

  void onChange(SheepFence value) {
    charcter = value;
    update();
  }
}
