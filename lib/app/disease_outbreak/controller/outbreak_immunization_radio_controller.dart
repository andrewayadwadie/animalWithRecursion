import 'package:get/get.dart';

enum OutBreakImmunization { yes, no, noAnswer }

class OutBreakImmunizationController extends GetxController {
  OutBreakImmunization charcter = OutBreakImmunization.noAnswer;

  void onChange(OutBreakImmunization value) {
    charcter = value;
    update();
  }
}
