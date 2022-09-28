import 'package:get/get.dart';

enum ControlMeasuresRadio { yes, no, noAnswer }

class ControlMeasuresRadioController extends GetxController {
  ControlMeasuresRadio charcter = ControlMeasuresRadio.noAnswer;

  void onChange(ControlMeasuresRadio value) {
    charcter = value;
    update();
  }
}