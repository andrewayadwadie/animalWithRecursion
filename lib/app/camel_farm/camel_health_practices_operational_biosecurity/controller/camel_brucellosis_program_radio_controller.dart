import 'package:get/get.dart';

enum CamelBrucellosisProgramRadio { yes, no,noAnswer }

class CamelBrucellosisProgramRadioController extends GetxController {
  CamelBrucellosisProgramRadio charcter = CamelBrucellosisProgramRadio.noAnswer;

  void onChange(CamelBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
