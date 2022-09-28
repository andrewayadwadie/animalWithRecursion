

import 'package:get/get.dart';

enum SheepBrokenFence { broken , good ,noAnswer }

class SheepBrokenFenceController extends GetxController {
  SheepBrokenFence charcter = SheepBrokenFence.noAnswer;

  void onChange(SheepBrokenFence value) {
    charcter = value;
    update();
  }
}
