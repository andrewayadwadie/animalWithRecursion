import 'package:get/get.dart';

class HorseImmunizationCheckBoxController extends GetxController {
  List<bool> choices = [false,false,false];

  void changeCheckBox(bool? value, int index) {
    choices[index] = value ?? false;

    update();
  }
}
