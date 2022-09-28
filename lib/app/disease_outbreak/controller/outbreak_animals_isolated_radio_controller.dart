import 'package:get/get.dart';

enum OutBreakAnimalIsolated { yes, no, noAnswer }

class OutBreakAnimalIsolatedController extends GetxController {
  OutBreakAnimalIsolated charcter = OutBreakAnimalIsolated.noAnswer;

  void onChange(OutBreakAnimalIsolated value) {
    charcter = value;
    update();
  }
}
