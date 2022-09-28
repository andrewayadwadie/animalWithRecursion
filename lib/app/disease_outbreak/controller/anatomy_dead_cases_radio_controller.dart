import 'package:get/get.dart';

enum AnatomyDeadCases { yes, no, noAnswer }

class AnatomyDeadCasesController extends GetxController {
  AnatomyDeadCases charcter = AnatomyDeadCases.noAnswer;

  void onChange(AnatomyDeadCases value) {
    charcter = value;
    update();
  }
}
