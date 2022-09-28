import 'package:get/get.dart';

enum GoatCleanVehiclesRadio { yes, no, noAnswer }

class GoatCleanVehiclesRadioController extends GetxController {
  GoatCleanVehiclesRadio charcter = GoatCleanVehiclesRadio.noAnswer;

  void onChange(GoatCleanVehiclesRadio value) {
    charcter = value;
    update();
  }
}
